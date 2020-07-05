SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cinema_booking_system
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cinema_booking_system` ;

-- -----------------------------------------------------
-- Schema cinema_booking_system
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cinema_booking_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cinema_booking_system` ;

-- -----------------------------------------------------
-- Table `cinema_booking_system`.`films`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`films` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`films` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `length_min` INT NOT NULL,
  `description` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`auditoriums`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`auditoriums` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`auditoriums` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `no_seats` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`screenings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`screenings` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`screenings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `film_id` INT NOT NULL,
  `auditorium_id` INT NOT NULL,
  `start_time` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `film_id` (`film_id` ASC) VISIBLE,
  INDEX `room_id` (`auditorium_id` ASC) VISIBLE,
  CONSTRAINT `screenings_ibfk_1`
    FOREIGN KEY (`film_id`)
    REFERENCES `cinema_booking_system`.`films` (`id`),
  CONSTRAINT `screenings_ibfk_2`
    FOREIGN KEY (`auditorium_id`)
    REFERENCES `cinema_booking_system`.`auditoriums` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`addresses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`addresses` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`addresses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street_number` INT(3) NULL,
  `street_name` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`customers` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`customers` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NULL,
  `gender` ENUM('M', 'F') NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE,
  INDEX `fk_customers_addresses1_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_customers_addresses1`
    FOREIGN KEY (`address_id`)
    REFERENCES `cinema_booking_system`.`addresses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`bookings`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`bookings` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`bookings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `screening_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `paid` TINYINT NOT NULL,
  `price` DECIMAL(3,2) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `screening_id` (`screening_id` ASC) VISIBLE,
  INDEX `customer_id` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `bookings_ibfk_1`
    FOREIGN KEY (`screening_id`)
    REFERENCES `cinema_booking_system`.`screenings` (`id`),
  CONSTRAINT `bookings_ibfk_2`
    FOREIGN KEY (`customer_id`)
    REFERENCES `cinema_booking_system`.`customers` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`seats`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`seats` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`seats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `seat_row` CHAR(1) NOT NULL,
  `number` INT(11) NOT NULL,
  `auditorium_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `room_id` (`auditorium_id` ASC) VISIBLE,
  CONSTRAINT `seats_ibfk_1`
    FOREIGN KEY (`auditorium_id`)
    REFERENCES `cinema_booking_system`.`auditoriums` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cinema_booking_system`.`reserved_seats`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cinema_booking_system`.`reserved_seats` ;

CREATE TABLE IF NOT EXISTS `cinema_booking_system`.`reserved_seats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `booking_id` INT NOT NULL,
  `seat_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `booking_id` (`booking_id` ASC) VISIBLE,
  INDEX `seat_id` (`seat_id` ASC) VISIBLE,
  CONSTRAINT `reserved_seat_ibfk_1`
    FOREIGN KEY (`booking_id`)
    REFERENCES `cinema_booking_system`.`bookings` (`id`),
  CONSTRAINT `reserved_seat_ibfk_2`
    FOREIGN KEY (`seat_id`)
    REFERENCES `cinema_booking_system`.`seats` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
