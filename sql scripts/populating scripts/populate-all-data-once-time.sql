INSERT INTO addresses (id,street_number,street_name,city) VALUES 
(1,157,"P.O. Box, 1676 Luctus. Av.","Piedecuesta"),
(2,135," Ut, Rd.","Bergerac"),
(3,196,"Ap #359-5430 Pellentesque Av.","Akron"),
(4,125,"P.O. Box, 3700 Eleifend Ave","Satara"),
(5,187,"Nisi Street","Kartaly"),
(6,109,"P.O. Box, 2711 Dapibus Rd.","Siquirres"),
(7,119,"Ap #479-8476 Eleifend Ave","Amravati"),
(8,170,"P.O. Box, 157 Aliquet. Road","Rhayader"),
(9,112,"Iaculis Avenue","Montignoso"),
(10,171,"Suspendisse Rd.","Houston");

INSERT INTO customers (id,first_name,last_name,gender,email,address_id) VALUES 
(1,"Daquan","Phillips",'F',"Cras.eget@euismodurna.org",1),
(2,"Benedict","Woodard","M","at.egestas@vitaemaurissit.edu",2),
(3,"Jaime","Perry","F","egestas.Aliquam@molestietellusAenean.co.uk",3),
(4,"Lacy","Silva","F","auctor.velit@vulputatedui.edu",4),
(5,"Madonna","Church","F","consequat.auctor@etmagnis.net",5),
(6,"Joshua","Norman","F","dictum@massa.com",6),
(7,"Desiree","Kinney","F","et@scelerisqueneque.edu",7),
(8,"Callie","Chavez","M","convallis.est@etmalesuada.co.uk",8),
(9,"Daphne","Wolf","M","Lorem.ipsum@nuncinterdum.com",9),
(10,"Ivan","Lott","M","sed.consequat.auctor@elit.co.uk",10);

INSERT INTO films (id,name,length_min,description) VALUES 
(1,"sagittis placerat. Cras",127,"dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat"),
(2,"purus ac",140,"Proin non massa non ante bibendum ullamcorper. Duis cursus, diam"),
(3,"sit amet metus.",123,"vitae odio sagittis semper. Nam tempor diam dictum"),
(4,"penatibus et magnis dis",138,"sodales nisi magna sed dui. Fusce aliquam, enim"),
(5,"Nam tempor diam dictum",127,"sagittis semper. Nam tempor diam dictum sapien. Aenean"),
(6,"Mauris nulla. Integer urna.",144,"interdum. Sed auctor odio a purus. Duis elementum, dui"),
(7,"dolor, tempus",134,"Fusce mollis. Duis sit amet diam"),
(8,"libero mauris, aliquam eu,",158,"purus. Nullam scelerisque neque sed sem egestas blandit."),
(9,"ante lectus",138,"adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper."),
(10,"pharetra. Quisque",127,"varius ultrices, mauris ipsum porta elit,");

INSERT INTO auditoriums (id,name,no_seats) VALUES 
(1,"Turpis",30),
(2,"Lectus",25),
(3,"Felis Orci",40),
(4,"Facilisis",35);

INSERT INTO screenings 
            (id,film_id,auditorium_id,start_time) 
VALUES      (1,9,3,"20-04-25 01:04:57"), 
            (2,8,1,"20-01-13 02:01:28"), 
            (3,7,4,"20-02-05 03:02:01"), 
            (4,3,1,"20-05-01 11:05:18"), 
            (5,3,3,"20-01-22 04:01:00"), 
            (6,4,2,"20-02-08 10:02:44"), 
            (7,10,1,"20-06-27 04:06:29"), 
            (8,4,1,"20-02-03 12:02:04"), 
            (9,3,3,"20-01-28 11:01:00"), 
            (10,8,1,"20-02-09 06:02:23"),
			(11,9,3,"20-04-02 07:04:47"), 
            (12,1,4,"20-06-25 11:06:40"), 
            (13,1,2,"20-06-18 01:06:57"), 
            (14,7,1,"20-05-20 11:05:08"), 
            (15,7,3,"20-04-25 08:04:30"), 
            (16,2,2,"20-04-06 01:04:24"), 
            (17,1,1,"20-06-07 08:06:53"), 
            (18,6,1,"20-06-21 12:06:14"), 
            (19,7,2,"20-01-16 06:01:22"), 
            (20,5,3,"20-06-27 09:06:54"); 
            
INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (1,"c",3,3), 
            (2,"b",7,1), 
            (3,"d",8,4), 
            (4,"e",4,4), 
            (5,"f",5,1), 
            (6,"e",5,1), 
            (7,"a",8,4), 
            (8,"b",10,1), 
            (9,"e",10,3), 
            (10,"b",9,4); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (11,"f",7,2), 
            (12,"f",10,1), 
            (13,"c",4,2), 
            (14,"c",4,3), 
            (15,"d",3,3), 
            (16,"d",9,1), 
            (17,"b",1,4), 
            (18,"c",2,3), 
            (19,"a",3,1), 
            (20,"d",3,1); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (21,"b",3,2), 
            (22,"b",1,3), 
            (23,"c",2,3), 
            (24,"d",6,3), 
            (25,"d",2,3), 
            (26,"b",5,1), 
            (27,"b",10,2), 
            (28,"e",8,3), 
            (29,"d",10,2), 
            (30,"f",1,4); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (31,"f",4,4), 
            (32,"e",4,2), 
            (33,"c",2,1), 
            (34,"c",3,4), 
            (35,"b",1,2), 
            (36,"c",7,1), 
            (37,"c",8,2), 
            (38,"c",5,3), 
            (39,"f",1,3), 
            (40,"a",10,4); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (41,"d",4,1), 
            (42,"c",6,2), 
            (43,"b",10,4), 
            (44,"b",4,2), 
            (45,"d",4,1), 
            (46,"c",2,4), 
            (47,"c",9,4), 
            (48,"f",9,1), 
            (49,"d",9,1), 
            (50,"d",10,4); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (51,"f",7,4), 
            (52,"a",3,2), 
            (53,"f",1,4), 
            (54,"e",7,1), 
            (55,"c",9,1), 
            (56,"a",6,2), 
            (57,"d",5,1), 
            (58,"a",4,4), 
            (59,"a",1,1), 
            (60,"a",2,1); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (61,"d",9,3), 
            (62,"b",3,1), 
            (63,"c",7,4), 
            (64,"b",4,2), 
            (65,"b",1,2), 
            (66,"b",8,2), 
            (67,"a",6,3), 
            (68,"c",7,4), 
            (69,"e",3,4), 
            (70,"a",4,1); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (71,"e",1,2), 
            (72,"e",3,4), 
            (73,"e",7,4), 
            (74,"f",3,4), 
            (75,"b",10,2), 
            (76,"d",3,2), 
            (77,"c",1,2), 
            (78,"d",3,1), 
            (79,"a",6,3), 
            (80,"d",10,2); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (81,"f",3,1), 
            (82,"b",5,1), 
            (83,"b",9,4), 
            (84,"f",5,2), 
            (85,"e",8,2), 
            (86,"b",4,1), 
            (87,"f",1,2), 
            (88,"e",3,2), 
            (89,"b",6,3), 
            (90,"d",4,3); 

INSERT INTO seats 
            (id,seat_row,number,auditorium_id) 
VALUES      (91,"c",6,2), 
            (92,"c",5,4), 
            (93,"d",8,3), 
            (94,"d",4,2), 
            (95,"e",6,3), 
            (96,"a",4,3), 
            (97,"b",4,1), 
            (98,"a",7,1), 
            (99,"d",2,4), 
            (100,"e",3,2); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (1,10,4,1,9.87), 
            (2,10,5,0,8.70), 
            (3,3,9,1,9.41), 
            (4,18,2,1,4.81), 
            (5,7,5,1,8.08), 
            (6,19,8,1,6.27), 
            (7,14,9,0,7.22), 
            (8,4,4,0,1.49), 
            (9,16,4,0,2.79), 
            (10,15,8,1,2.20); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (11,5,4,1,0.31), 
            (12,6,8,0,8.09), 
            (13,15,6,1,6.06), 
            (14,14,3,1,2.05), 
            (15,3,6,1,7.34), 
            (16,17,4,1,4.67), 
            (17,13,3,1,0.17), 
            (18,18,10,0,9.53), 
            (19,1,5,1,9.77), 
            (20,8,6,0,4.57); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (21,19,10,0,5.64), 
            (22,18,6,0,0.24), 
            (23,15,4,0,6.37), 
            (24,17,2,0,9.91), 
            (25,8,4,0,6.35), 
            (26,5,2,1,1.58), 
            (27,13,4,1,2.00), 
            (28,17,4,0,5.94), 
            (29,7,3,0,8.90), 
            (30,18,3,1,7.01); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (31,20,1,0,0.08), 
            (32,14,6,0,8.86), 
            (33,5,6,0,0.27), 
            (34,8,1,0,3.08), 
            (35,1,6,0,6.52), 
            (36,6,9,0,1.38), 
            (37,2,6,1,0.30), 
            (38,12,9,1,7.04), 
            (39,9,5,0,9.97), 
            (40,8,4,1,6.65); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (41,4,8,1,1.22), 
            (42,3,6,0,1.83), 
            (43,9,4,0,3.56), 
            (44,11,9,1,3.66), 
            (45,9,4,0,8.15), 
            (46,19,7,1,3.61), 
            (47,20,2,1,7.11), 
            (48,16,2,1,4.17), 
            (49,3,6,1,8.34), 
            (50,3,10,1,3.65); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (51,14,4,0,6.53), 
            (52,5,7,0,1.88), 
            (53,6,9,0,4.81), 
            (54,6,3,0,3.66), 
            (55,11,7,1,0.20), 
            (56,16,10,1,2.64), 
            (57,13,6,0,7.40), 
            (58,8,4,1,5.54), 
            (59,15,6,0,9.51), 
            (60,12,10,0,5.78); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (61,11,5,0,0.37), 
            (62,3,1,0,9.40), 
            (63,17,3,0,9.87), 
            (64,19,4,0,8.13), 
            (65,8,3,0,7.60), 
            (66,1,8,0,0.39), 
            (67,2,2,0,1.56), 
            (68,3,2,0,1.39), 
            (69,6,6,0,8.54), 
            (70,8,3,0,0.45); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (71,16,6,0,6.42), 
            (72,13,1,1,8.36), 
            (73,20,4,0,1.27), 
            (74,11,9,0,2.92), 
            (75,19,7,1,9.45), 
            (76,1,5,1,9.11), 
            (77,13,7,1,8.80), 
            (78,4,3,1,9.13), 
            (79,13,3,0,2.57), 
            (80,6,8,1,8.02); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (81,1,6,0,8.69), 
            (82,7,10,0,3.81), 
            (83,10,4,1,4.48), 
            (84,19,1,0,6.86), 
            (85,15,4,0,6.38), 
            (86,10,3,0,2.28), 
            (87,12,8,1,8.54), 
            (88,5,6,1,1.88), 
            (89,1,3,0,7.99), 
            (90,6,6,1,4.14); 

INSERT INTO bookings 
            (id,screening_id,customer_id,paid,price) 
VALUES      (91,19,6,0,9.86), 
            (92,7,2,1,6.86), 
            (93,6,9,0,3.61), 
            (94,14,3,1,7.15), 
            (95,9,3,0,7.10), 
            (96,14,10,0,4.21), 
            (97,18,8,1,7.57), 
            (98,13,4,0,1.75), 
            (99,10,8,1,3.71), 
            (100,4,5,1,7.89); 
            
INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (1,33,18), 
            (2,34,72), 
            (3,50,17), 
            (4,35,82), 
            (5,33,55), 
            (6,89,51), 
            (7,13,57), 
            (8,9,37), 
            (9,81,67), 
            (10,15,92); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (11,67,92), 
            (12,64,30), 
            (13,67,23), 
            (14,44,100), 
            (15,48,9), 
            (16,11,93), 
            (17,23,35), 
            (18,68,91), 
            (19,56,52), 
            (20,36,49); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (21,4,18), 
            (22,95,86), 
            (23,53,26), 
            (24,69,7), 
            (25,1,56), 
            (26,44,23), 
            (27,94,91), 
            (28,16,60), 
            (29,67,77), 
            (30,83,53); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (31,69,37), 
            (32,45,79), 
            (33,76,64), 
            (34,93,44), 
            (35,69,77), 
            (36,54,93), 
            (37,43,49), 
            (38,57,27), 
            (39,71,64), 
            (40,35,84); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (41,92,99), 
            (42,99,77), 
            (43,80,31), 
            (44,12,69), 
            (45,71,24), 
            (46,71,52), 
            (47,72,22), 
            (48,77,71), 
            (49,4,57), 
            (50,9,72); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (51,69,78), 
            (52,2,26), 
            (53,91,9), 
            (54,24,25), 
            (55,51,17), 
            (56,16,76), 
            (57,12,31), 
            (58,39,61), 
            (59,63,34), 
            (60,87,74); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (61,25,29), 
            (62,17,28), 
            (63,18,39), 
            (64,79,78), 
            (65,30,74), 
            (66,30,55), 
            (67,26,86), 
            (68,31,70), 
            (69,66,87), 
            (70,68,45); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (71,28,29), 
            (72,2,36), 
            (73,51,4), 
            (74,28,26), 
            (75,88,95), 
            (76,16,83), 
            (77,31,69), 
            (78,50,70), 
            (79,31,45), 
            (80,1,69); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (81,86,35), 
            (82,54,11), 
            (83,30,67), 
            (84,80,39), 
            (85,41,25), 
            (86,73,26), 
            (87,74,88), 
            (88,86,60), 
            (89,78,94), 
            (90,61,58); 

INSERT INTO reserved_seats 
            (id,booking_id,seat_id) 
VALUES      (91,50,45), 
            (92,18,58), 
            (93,82,89), 
            (94,50,78), 
            (95,83,94), 
            (96,34,74), 
            (97,70,65), 
            (98,43,44), 
            (99,35,22), 
            (100,37,72); 