INSERT INTO brand (brand) VALUES
    ('yamaha'),
    ('gibson'),
    ('harmon professional'),
    ('gold peak industries'),
    ('sennheiser'),
    ('shure'),
    ('fender'),
    ('kawai'),
    ('steinway musical instruments'),
    ('roland');

INSERT INTO lesson_type (lesson_type) VALUES
    ('individual'),
    ('group'),
    ('ensemble');

INSERT INTO instrument_type (instrument_type) VALUES
    ('guitar'),
    ('violin'),
    ('piano'),
    ('saxophone'),
    ('drums'),
    ('cello'),
    ('trumpet'),
    ('bass'),
    ('flute'),
    ('clarinet');

INSERT INTO skill_level (skill_level) VALUES
    ('beginner'),
    ('intermediate'),
    ('advanced');

INSERT INTO genre (genre) VALUES
    ('classical'),
    ('rock'),
    ('pop'),
    ('jazz'),
    ('blues');

INSERT INTO address (street,zip,city)
VALUES
  ('P.O. Box 167, 951 Tristique Avenue','451280','Van'),
  ('Ap #898-1379 Ut Rd.','77-556','Lima'),
  ('681-257 Diam St.','496549','Rizes'),
  ('Ap #261-7025 Urna. Street','3140-9556','Tver'),
  ('P.O. Box 477, 5589 Facilisi. Road','4041 DP','Quimbaya'),
  ('P.O. Box 778, 166 Donec Street','807832','Hamburg'),
  ('2905 Vel, Ave','8858','Shigar'),
  ('613-8021 Eu Rd.','86315','Bois-de-Villers'),
  ('929-4390 Donec Avenue','573766','Calder'),
  ('1680 Aliquet St.','02661','Cork');
INSERT INTO address (street,zip,city)
VALUES
  ('P.O. Box 625, 1056 Dolor Road','1614','Devonport'),
  ('Ap #336-1177 In Rd.','N3A 9M4','Hamburg'),
  ('8700 Egestas Rd.','523350','Buken'),
  ('P.O. Box 725, 8035 Cursus. Avenue','2525 FR','Okene'),
  ('Ap #719-8037 Nunc Road','WP13 9SF','Kasterlee'),
  ('Ap #787-2133 Ante Road','53247','King William''s Town'),
  ('431-999 Donec Rd.','1648','Waitara'),
  ('8083 Sed Rd.','21716','Ningxia'),
  ('Ap #757-1928 Suspendisse Rd.','74-427','Palma de Mallorca'),
  ('104-6635 Dui. Avenue','28-526','Geelong');
INSERT INTO address (street,zip,city)
VALUES
  ('Ap #873-5943 Morbi Ave','326457','Poltava'),
  ('Ap #288-6904 Cursus Rd.','9312','Middelburg'),
  ('793-6712 Ut Avenue','31371','Boksburg'),
  ('509 Vitae Avenue','9550','Akhisar'),
  ('349-9114 Donec Street','64188','Caruaru'),
  ('651-9766 Tristique St.','31-211','Deline'),
  ('7605 Luctus St.','18811','Palmerston'),
  ('P.O. Box 865, 9344 Nulla. St.','345931','Điện Biên Phủ'),
  ('Ap #298-8280 Ut Rd.','07514','Pontianak'),
  ('P.O. Box 211, 4046 Sollicitudin Avenue','42564','Hainan');
INSERT INTO address (street,zip,city)
VALUES
  ('513-1861 Eleifend Rd.','7668 XT','Arica'),
  ('158-1554 Eget, Av.','32327','Balanga'),
  ('188-7776 Egestas St.','15685','Shanghai'),
  ('P.O. Box 212, 1310 Luctus St.','3782','Cametá'),
  ('P.O. Box 800, 6934 Ut St.','25171','Westport'),
  ('Ap #448-8775 Eleifend Av.','06667','Namur'),
  ('P.O. Box 287, 2729 Sagittis Rd.','227511','Yurimaguas'),
  ('Ap #632-3591 Pellentesque Rd.','35331','Lakewood'),
  ('492-8958 Semper Av.','380374','Srinagar'),
  ('Ap #549-448 Fringilla. Avenue','11846','Dublin');
INSERT INTO address (street,zip,city)
VALUES
  ('Ap #830-8592 Aenean Road','67887','Cartagena'),
  ('Ap #900-7825 Et, Av.','4159','Trujillo'),
  ('P.O. Box 118, 8778 Vel Road','937374','Heredia'),
  ('798-3974 Risus. St.','617658','Ila'),
  ('Ap #933-7692 Non, Ave','87-43','Shaanxi'),
  ('Ap #725-354 Praesent Rd.','22550','Jecheon'),
  ('P.O. Box 254, 9142 Nunc Rd.','65262','Halle'),
  ('340-3905 Tempus Street','505966','Gjøvik'),
  ('799-437 Sapien Avenue','603946','Merdorp'),
  ('P.O. Box 219, 6697 Ac St.','2076 IY','Łódź');
INSERT INTO address (street, zip, city)
VALUES
  ('Forsgränd 1','19449','Upplands Väsby'),
  ('Vallvägen 32', '12533','Älvsjö');

INSERT INTO student (skill_level_id,address_id,enrolled,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (1,41,'1','354683556551545','Lane','Holden','iaculis.nec.eleifend@google.net','445268496745'),
  (3,31,'1','252652682643965','Henry','Parsons','suspendisse.non@protonmail.ca','365228797928'),
  (2,20,'1','631426815286769','Abraham','Pruitt','sed.turpis@yahoo.edu','358365346387'),
  (2,44,'1','463633764384889','Harding','Roth','aenean.euismod.mauris@icloud.ca','456653551679'),
  (2,21,'1','646288468578456','Tyler','Cardenas','ultricies.adipiscing@icloud.org','678443828526'),
  (3,29,'1','486242573578645','Aileen','Mcclain','orci@yahoo.org','994416535373'),
  (2,35,'1','264745964873469','Michael','Baird','nunc.sed.libero@icloud.com','866434452676'),
  (3,18,'1','866873533985456','Thane','Serrano','eget.dictum.placerat@yahoo.org','314344774524'),
  (3,16,'1','737532714353871','Dora','Schneider','dolor.donec@protonmail.ca','788457753576'),
  (1,39,'1','887562766542296','Kelsey','Brewer','id.ante@protonmail.edu','275443525429');
INSERT INTO student (skill_level_id,address_id,enrolled,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (3,19,'1','746843871372657','Martena','Salas','non@icloud.net','326235133729'),
  (2,9,'1','592746711261578','Hedley','Avery','augue.porttitor@aol.org','658534327865'),
  (2,8,'1','431784772183233','Cassady','Goodman','porttitor@google.org','444682264335'),
  (3,26,'1','673584834535452','Callum','O''connor','nec.urna@protonmail.net','233198172643'),
  (3,29,'1','337662117126423','Madeline','Maxwell','etiam.imperdiet@google.com','523346722562'),
  (3,19,'1','413444828456339','Regan','Lambert','donec.dignissim.magna@icloud.edu','593536638552'),
  (1,38,'0','245268836449478','Nehru','Salas','odio.vel@yahoo.edu','778364647572'),
  (3,38,'1','353216749337646','Edan','Berger','vitae.aliquam@yahoo.edu','656878911587'),
  (3,28,'1','358221755673244','Otto','Clements','odio.sagittis@icloud.net','666426899283'),
  (2,17,'1','295726742752546','Felix','Clay','tempor@yahoo.edu','653685687448');
INSERT INTO student (skill_level_id,address_id,enrolled,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (1,46,'1','829715496963571','Garrison','Lynn','pellentesque.ultricies@icloud.net','427822522776'),
  (2,18,'1','844984422859376','Kibo','Sears','amet.luctus@aol.net','183723181372'),
  (2,3,'1','651439785148375','Bethany','Spence','neque.tellus@hotmail.com','254167425236'),
  (2,10,'1','589464348924625','Hermione','Wyatt','ante.nunc@aol.edu','628285783453'),
  (2,21,'1','429316825655461','Simone','Mendoza','nunc.sit.amet@aol.edu','386752729537'),
  (2,27,'1','634563319257857','Kane','Bean','nunc@yahoo.edu','327667315937'),
  (2,40,'1','629292775524429','Stewart','Vincent','leo.cras@google.couk','686376849259'),
  (3,22,'0','222632966258346','Gemma','Branch','arcu@outlook.com','798349756886'),
  (1,26,'1','341573795665413','Eliana','Little','class.aptent@hotmail.edu','886787552755'),
  (3,31,'1','488643725825325','Hector','Palmer','blandit@google.ca','415816234425');

INSERT INTO student (skill_level_id,address_id,enrolled,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (2,51,'1','109845710984','Mostafa','Aziz Zuher','thecool4a@gmail.com','200301201111'),
  (2,52,'1','032409813409','Roy','Liu','royliu.ruirui@gmail.com','200201299999');

INSERT INTO sibling_to (sibling_student_id,student_id)
VALUES
  (1,2),
  (2,3),
  (1,3),
  (29,30),
  (28,27);

INSERT INTO room (room_number)
VALUES
  ('I565'),
  ('F853'),
  ('S746'),
  ('I249'),
  ('Q124'),
  ('U833'),
  ('G427'),
  ('G779'),
  ('I367'),
  ('N686');
INSERT INTO room (room_number)
VALUES
  ('B338'),
  ('W222'),
  ('T528'),
  ('Q774'),
  ('N481'),
  ('T868'),
  ('Y939'),
  ('F299'),
  ('I682'),
  ('B545');

INSERT INTO pricing (lesson_type_id,price_of_beginner,price_of_intermediate,price_of_advanced,sibling_discount1,sibling_discount2,instructor_pay_percentage)
VALUES
  (1,26,29,139,0.80,0.75,0.600),
  (2,80,53,200,0.85,0.80,0.650),
  (3,19,151,240,0.80,0.75,0.700);

INSERT INTO instructor (address_id,phone_number,active,first_name,last_name,mail_address,ssn)
VALUES
  (4,'541464256927688','1','Althea','Farrell','feugiat@protonmail.couk','599832164573'),
  (26,'651163467432136','1','Doris','Christensen','donec.felis.orci@google.ca','197344628292'),
  (21,'641252787318762','1','Cade','Joyner','vel.est@yahoo.ca','898582163377'),
  (49,'212752396542425','1','Fritz','Long','rutrum@outlook.net','653642146485'),
  (44,'819256765176542','1','Lillian','Owen','non.egestas@google.net','724438268648'),
  (14,'281553644868256','1','Dominic','Graves','pellentesque.tellus@google.edu','987145525458'),
  (28,'673586662762283','1','Silas','Rivers','proin.nisl.sem@icloud.edu','528575545265'),
  (20,'616577162847263','1','Baker','Suarez','aliquam@outlook.net','353189695562'),
  (12,'215338171378285','1','Donna','Sparks','nunc.pulvinar@outlook.com','643763782756'),
  (15,'726466212785333','1','Stephanie','Petersen','mauris.sagittis@outlook.net','751176624888');

INSERT INTO contact_person (address_id,relation_to_student,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (6,'sapien molestie orci tincidunt','327347786763464','Rhonda','Velazquez','ullamcorper.viverra@icloud.edu','724776586256'),
  (6,'In','478274765488167','Jared','Barrera','ultricies.dignissim.lacus@protonmail.net','487346244591'),
  (2,'vel quam dignissim','263927426576576','Wyatt','Brooks','iaculis@outlook.net','638426875584'),
  (17,'quis,','765932466844613','Candice','Hicks','faucibus.morbi.vehicula@aol.org','334512555427'),
  (9,'sed libero. Proin','639682529443734','Aphrodite','Howell','nunc.ut@aol.edu','653618363665'),
  (12,'convallis dolor. Quisque tincidunt','375333683834673','Teegan','Becker','in@google.edu','487358692788'),
  (11,'non arcu. Vivamus sit','371268396387164','Fuller','Ellis','auctor.mauris@aol.edu','358441628556'),
  (31,'ac, feugiat','654533591422579','Charlotte','Hayes','feugiat@protonmail.com','631517562169'),
  (40,'Nunc mauris','662455545526282','Melyssa','Emerson','nunc.mauris@yahoo.com','241961343261'),
  (28,'faucibus leo, in lobortis tellus','415887875852653','Lunea','Tyler','vel.nisl@google.com','676443124762');
INSERT INTO contact_person (address_id,relation_to_student,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (47,'elementum, dui quis','377142562754432','Salvador','Beck','velit.dui.semper@aol.net','445836582815'),
  (24,'Cras dictum ultricies ligula.','814375433535753','Giacomo','Hobbs','egestas.a.dui@google.couk','987578774555'),
  (1,'elit, pharetra ut, pharetra','634438321322977','Daquan','Solis','montes@outlook.com','843678252293'),
  (45,'vulputate','665713827663612','Caldwell','Sims','lorem.vehicula@yahoo.org','758541223249'),
  (45,'Nullam feugiat','269773455491874','Charissa','Logan','rutrum.eu@outlook.edu','533224194748'),
  (12,'viverra. Maecenas iaculis','549296283426557','Rose','Rich','sed.id@outlook.couk','554336517264'),
  (34,'magna. Nam','922468328122972','Leroy','Baird','duis@hotmail.net','547761931476'),
  (42,'Donec tempus,','566285327473438','MacKensie','Stevenson','eleifend.nunc@hotmail.ca','826675453255'),
  (39,'enim. Etiam imperdiet dictum magna.','674643633327259','Zachary','Burks','euismod.est@yahoo.net','328246416865'),
  (4,'luctus lobortis.','668859233448448','Hollee','Fitzpatrick','pharetra@aol.net','637652426871');
INSERT INTO contact_person (address_id,relation_to_student,phone_number,first_name,last_name,mail_address,ssn)
VALUES
  (6,'vel quam dignissim pharetra.','736495212739652','Robert','Gilbert','fermentum.arcu.vestibulum@outlook.com','777434956864'),
  (22,'ornare tortor','456165626466874','Felicia','Mercer','aliquet.metus@yahoo.edu','952788288595'),
  (39,'neque tellus, imperdiet','548213961854551','Sawyer','Dawson','amet@yahoo.couk','432662572558'),
  (15,'et magnis dis parturient','975417449746884','Hilary','Warren','scelerisque.neque.nullam@google.com','861855268846'),
  (45,'nunc nulla','846463424343348','Maia','Mayer','ligula@icloud.org','384433592282');

INSERT INTO student_contact_person (student_id,contact_person_id)
VALUES
  (1,8),
  (2,8),
  (3,8),
  (4,21),
  (5,25),
  (6,18),
  (7,1),
  (8,2),
  (9,13),
  (10,3),
  (11,24),
  (12,11),
  (13,19),
  (14,20),
  (15,14),
  (16,9),
  (17,5),
  (19,16),
  (20,7),
  (21,4),
  (23,23),
  (24,17),
  (25,10),
  (26,15),
  (27,12),
  (28,6),
  (29,22),
  (30,22);

INSERT INTO ensemble (instructor_id,skill_level_id,genre_id,room_id,pricing_id,start_time,end_time,max_no_of_students,min_no_of_students)
VALUES
  (7,2,5,6,3,'2022-11-24 14:00:01','2022-11-24 15:14:59',9,6),
  (8,2,2,9,3,'2023-04-03 16:48:11','2023-04-03 17:08:46',7,6),
  (4,1,2,11,3,'2022-04-12 08:29:44','2022-04-12 13:11:37',2,1),
  (10,2,4,4,3,'2023-10-22 09:48:19','2023-10-22 15:50:26',6,5),
  (5,1,2,4,3,'2023-11-17 16:55:36','2023-11-17 17:33:19',7,6),
  (9,2,4,5,3,'2023-03-30 11:50:29','2023-03-30 15:29:47',10,4),
  --newly added
  (2,3,4,18,3,'2022-09-18 08:57:28','2022-09-18 13:42:21',15,10),
  (3,2,5,6,3,'2022-12-24 14:00:01','2022-12-24 15:14:59',9,6),
  (3,2,2,9,3,'2022-12-03 16:48:11','2022-12-03 17:08:46',7,6),
  (4,1,2,11,3,'2022-12-12 08:29:44','2022-12-12 13:11:37',2,1),
  (1,2,4,4,3,'2022-12-22 09:48:19','2022-12-22 15:50:26',6,5),
  (4,1,2,4,3,'2022-12-17 16:55:36','2022-12-17 17:33:19',7,6),
  (1,2,4,5,3,'2022-12-30 11:50:29','2022-12-30 15:29:47',10,4);

INSERT INTO students_of_ensemble (lesson_id,student_id)
VALUES
  (1,25),
  (1,10),
  (1,3),
  (1,2),
  (1,6),
  (1,31),
  (1,4),
  (2,16),
  (2,15),
  (2,28),
  (2,4),
  (2,23),
  (2,32),
  (2,18),
  (3,31),
  (3,32),
  (4,10),
  (4,16),
  (4,8),
  (4,11),
  (4,24),
  (4,23),
  (5,20),
  (5,16),
  (5,14),
  (5,26),
  (5,5),
  (5,10),
  (6,29),
  (6,3),
  (6,28),
  (6,30),
  (7,1),
  (7,14),
  (7,21),
  (7,8),
  (7,13),
  (7,10),
  (7,17),
  (7,31),
  (7,5),
  (7,15),
  (7,22),
  (7,4),
  (7,2),
  (7,7),
  (7,23),
  -- newly added lessons
  (8,25),
  (8,9),
  (8,14),
  (8,30),
  (8,3),
  (8,11),
  (9,13),
  (9,9),
  (9,1),
  (9,18),
  (9,21),
  (9,14),
  (9,24),
  (10,25),
  (11,3),
  (11,28),
  (11,29),
  (11,5),
  (11,17),
  (12,18),
  (12,10),
  (12,24),
  (12,23),
  (12,29),
  (12,21),
  (13,21),
  (13,27),
  (13,28),
  (13,31);
  
INSERT INTO gro (instructor_id,skill_level_id,instrument_type_id,room_id,pricing_id,start_time,end_time,max_no_of_students,min_no_of_students)
VALUES
  (7,2,3,20,2,'2023-01-18 11:10:08','2023-01-18 12:16:43',9,2),
  (5,1,5,8,2,'2023-02-11 12:18:21','2023-02-11 15:41:50',4,1),
  (3,3,6,14,2,'2022-01-25 14:56:54','2022-01-25 15:13:56',9,3),
  (3,2,6,17,2,'2022-03-19 13:34:53','2022-03-19 14:00:23',13,10),
  (5,3,7,2,2,'2023-09-15 15:55:48','2023-09-15 16:41:17',6,4),
  (4,3,2,1,2,'2022-12-08 11:20:31','2022-12-08 16:43:49',7,6),
  (2,2,2,2,2,'2022-08-11 11:11:11','2022-08-11 12:12:12',10,5),
  (3,3,3,3,2,'2023-08-08 08:08:08','2023-08-08 09:09:09',11,7),
  (1,2,4,4,2,'2022-10-10 10:10:10','2022-10-10 11:11:11',5,2),
    --newly added
  (3,3,6,14,2,'2022-12-25 14:56:54','2022-12-25 15:13:56',9,3),
  (3,2,6,17,2,'2022-12-19 13:34:53','2022-12-19 14:00:23',13,10),
  (5,3,7,2,2,'2022-12-15 15:55:48','2022-12-15 16:41:17',6,4),
  (4,3,2,1,2,'2022-12-08 11:20:31','2022-12-08 16:43:49',7,6),
  (1,2,2,2,2,'2022-12-11 11:11:11','2022-12-11 12:12:12',10,5),
  (3,3,3,3,2,'2022-12-08 08:08:08','2022-12-08 09:09:09',11,7),
  (1,2,4,4,2,'2022-12-10 10:10:10','2022-12-10 11:11:11',5,2);

INSERT INTO students_of_group (lesson_id,student_id)
VALUES
  (1,16),
  (1,31),
  (2,10),
  (2,9),
  (2,13),
  (3,16),
  (3,15),
  (3,20),
  (3,11),
  (3,23),
  (3,9),
  (3,10),
  (3,32),
  (3,30),
  (4,4),
  (4,6),
  (4,31),
  (4,32),
  (4,10),
  (4,20),
  (4,27),
  (4,21),
  (4,8),
  (4,30),
  (4,1),
  (4,15),
  (5,28),
  (5,20),
  (5,9),
  (5,16),
  (6,10),
  (6,7),
  (6,17),
  (6,16),
  (6,6),
  (6,22),
  (6,15),
  (7,5),
  (7,2),
  (7,15),
  (7,27),
  (7,29),
  (8,15),
  (8,2),
  (8,1),
  (8,29),
  (8,13),
  (8,32),
  (8,6),
  (8,7),
  (8,28),
  (8,20),
  (8,25),
  (9,14),
  (9,29),
  (9,10),
  (9,26);

INSERT INTO individual (instructor_id,skill_level_id,instrument_type_id,room_id,pricing_id,student_id,start_time,end_time)
VALUES
  (1,2,5,8,1,20,'2023-05-23 11:37:00','2023-05-23 17:15:55'),
  (2,1,6,7,1,7,'2023-06-20 12:08:34','2023-06-20 13:24:43'),
  (1,3,10,9,1,16,'2022-12-15 13:25:25','2022-12-15 14:12:35'),
  (10,1,7,17,1,14,'2022-07-04 14:52:16','2022-07-04 18:41:23'),
  (9,2,9,13,1,21,'2022-02-03 18:01:10','2022-02-03 19:25:39'),
  (10,2,4,8,1,29,'2022-06-27 10:08:57','2022-06-27 12:48:29'),
  (10,2,7,17,1,8,'2023-12-06 18:00:07','2023-12-06 18:47:07'),
  (1,2,7,3,1,22,'2022-05-02 13:29:35','2022-05-02 15:47:26'),
  (1,2,9,1,1,17,'2023-12-08 09:50:04','2023-12-08 15:38:48'),
  (2,3,6,9,1,10,'2023-07-10 13:18:11','2023-07-10 14:05:35'),
  --newly added
  (1,2,9,13,1,21,'2022-12-03 19:01:10','2022-12-03 20:25:39'),
  (3,2,4,8,1,29,'2022-12-27 11:08:57','2022-12-27 13:48:29'),
  (5,2,7,17,1,8,'2022-12-06 16:00:07','2022-12-06 17:47:07'),
  (4,2,7,3,1,22,'2022-12-02 13:29:35','2022-12-02 15:47:26'),
  (1,2,9,1,1,17,'2022-12-08 09:50:04','2022-12-08 15:38:48'),
  (3,3,6,9,1,10,'2022-12-10 13:18:11','2022-12-10 14:05:35');

INSERT INTO instructor_instrument_type (instructor_id,instrument_type_id)
VALUES
  (5,3),
  (4,7),
  (5,2),
  (8,8),
  (2,9),
  (7,7),
  (4,10),
  (7,3),
  (2,6),
  (8,3);
INSERT INTO instructor_instrument_type (instructor_id,instrument_type_id)
VALUES
  (2,2),
  (3,3),
  (10,8),
  (5,8),
  (1,8),
  (7,2),
  (3,8),
  (8,4),
  (1,9),
  (4,8);

INSERT INTO renting (brand_id,instrument_type_id,fee)
VALUES
  (9,8,479),
  (7,9,984),
  (8,7,931),
  (2,4,206),
  (3,3,572),
  (2,5,877),
  (5,2,112),
  (3,7,41),
  (3,7,980),
  (7,9,402);
INSERT INTO renting (brand_id,instrument_type_id,fee)
VALUES
  (3,6,389),
  (10,1,306),
  (5,7,913),
  (9,7,26),
  (4,9,972),
  (7,3,656),
  (2,9,527),
  (7,4,761),
  (6,7,562),
  (5,1,340);
INSERT INTO renting (brand_id,instrument_type_id,fee)
VALUES
  (5,2,441),
  (9,2,853),
  (10,6,642),
  (2,2,5),
  (8,2,387),
  (5,5,452),
  (6,3,746),
  (9,2,599),
  (10,2,949),
  (2,9,600);

INSERT INTO instrument (brand_id,instrument_type_id,renting_id,student_id,start_date,return_date)
VALUES
  (7,2,27,4,'Jan 28, 2022','Jan 28, 2023'),
  (6,4,19,4,'Jan 19, 2023','Jan 19, 2024'),
  (10,10,3,25,'Feb 8, 2022','Feb 8, 2023'),
  (4,8,1,30,'Sep 16, 2022','Sep 16, 2023'),
  (5,2,6,4,'Dec 24, 2021','Dec 24, 2022'),
  (9,9,11,30,'Nov 29, 2021','Nov 29, 2022'),
  (10,4,14,16,'Sep 10, 2022','Sep 10, 2023'),
  (9,3,16,6,'May 9, 2022','May 9, 2023'),
  (9,10,28,11,'Jun 8, 2022','Jun 8, 2023'),
  (1,6,4,1,'Sep 7, 2022','Sep 7, 2023');
INSERT INTO instrument (brand_id,instrument_type_id,renting_id,student_id,start_date,return_date)
VALUES
  (3,2,22,21,'Mar 18, 2023','Mar 18, 2024'),
  (5,2,9,20,'Oct 16, 2023','Oct 16, 2024'),
  (10,9,21,8,'Jan 23, 2022','Jan 23, 2023'),
  (7,10,17,25,'Mar 17, 2023','Mar 17, 2024'),
  (10,6,22,18,'Mar 7, 2022','Mar 7, 2023'),
  (1,6,7,9,'Dec 19, 2021','Dec 19, 2022'),
  (9,4,10,12,'Aug 26, 2023','Aug 26, 2024'),
  (5,2,10,10,'Apr 18, 2022','Apr 18, 2023'),
  (3,4,25,26,'Feb 17, 2022','Feb 17, 2023'),
  (6,1,22,11,'Jun 28, 2023','Jun 28, 2024');
INSERT INTO instrument (brand_id,instrument_type_id,renting_id,student_id,start_date,return_date)
VALUES
  (6,8,29,21,'Dec 12, 2021','Dec 12, 2022'),
  (1,4,16,16,'Mar 26, 2023','Mar 26, 2024'),
  (1,1,6,27,'Nov 22, 2023','Nov 22, 2024'),
  (5,8,6,9,'Mar 31, 2022','Mar 31, 2023'),
  (3,9,3,26,'Jan 16, 2023','Jan 16, 2024'),
  (8,7,3,12,'Dec 17, 2022','Dec 17, 2023'),
  (4,4,26,8,'Feb 16, 2022','Feb 16, 2023'),
  (3,9,8,10,'Sep 30, 2023','Sep 30, 2024'),
  (10,7,3,24,'Dec 29, 2021','Dec 29, 2022'),
  (4,2,13,6,'Jan 7, 2022','Jan 7, 2023');
INSERT INTO instrument (brand_id,instrument_type_id,renting_id,student_id,start_date,return_date)
VALUES
  (10,8,13,8,'Sep 18, 2022','Sep 18, 2023'),
  (9,2,7,4,'Oct 28, 2023','Oct 28, 2024'),
  (2,2,30,6,'Jul 2, 2022','Jul 2, 2023'),
  (7,4,26,6,'Mar 11, 2023','Mar 11, 2024'),
  (1,9,17,28,'Oct 16, 2022','Oct 16, 2023'),
  (3,2,13,14,'Jun 23, 2022','Jun 23, 2023'),
  (1,1,10,28,'May 23, 2022','May 23, 2023'),
  (6,8,23,5,'Mar 25, 2023','Mar 25, 2024'),
  (9,6,17,19,'Jun 9, 2022','Jun 9, 2023'),
  (1,9,15,14,'Jan 4, 2022','Jan 4, 2023');
INSERT INTO instrument (brand_id,instrument_type_id,renting_id,student_id,start_date,return_date)
VALUES
  (10,9,1,27,'Jul 6, 2022','Jul 6, 2023'),
  (5,7,21,4,'Feb 24, 2022','Feb 24, 2023'),
  (6,7,12,15,'Apr 19, 2023','Apr 19, 2024'),
  (3,5,18,25,'Jul 13, 2023','Jul 13, 2024'),
  (2,5,26,7,'Jun 20, 2023','Jun 20, 2024'),
  (9,7,14,6,'Jul 17, 2023','Jul 17, 2024'),
  (8,10,18,28,'Sep 23, 2022','Sep 23, 2023'),
  (9,7,12,19,'Jun 7, 2022','Jun 7, 2023'),
  (7,6,9,19,'Dec 2, 2021','Dec 2, 2022'),
  (9,6,19,22,'Nov 24, 2022','Nov 24, 2023');

INSERT INTO rental_records (instrument_id,student_id,start_date,returned_date)
VALUES
  (8,6,'May 9, 2023','May 10, 2023'),
  (3,25,'Feb 8, 2022','Feb 8, 2023'),
  (4,30,'Sep 16, 2022','May 18, 2023'),
  (5,4,'Dec 24, 2021','Jan 29, 2022'),
  (10,1,'Sep 7, 2022','Sep 30, 2022');

INSERT INTO soundgood_music_school (address_id,max_capacity)
VALUES
  (31,70);