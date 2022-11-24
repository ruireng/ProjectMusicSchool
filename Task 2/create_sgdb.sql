CREATE TABLE address (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 street VARCHAR(100) NOT NULL,
 zip CHAR(10) NOT NULL,
 city VARCHAR(50) NOT NULL
);

ALTER TABLE address ADD CONSTRAINT PK_address PRIMARY KEY (id);


CREATE TABLE brand (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand VARCHAR(50) NOT NULL UNIQUE
);

ALTER TABLE brand ADD CONSTRAINT PK_brand PRIMARY KEY (id);


CREATE TABLE genre (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 genre VARCHAR(20) NOT NULL UNIQUE
);

ALTER TABLE genre ADD CONSTRAINT PK_genre PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 address_id INT NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 ssn CHAR(12) NOT NULL UNIQUE
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instrument_type (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type VARCHAR(15) NOT NULL UNIQUE
);

ALTER TABLE instrument_type ADD CONSTRAINT PK_instrument_type PRIMARY KEY (id);


CREATE TABLE lesson_type (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_type VARCHAR(20) NOT NULL UNIQUE
);

ALTER TABLE lesson_type ADD CONSTRAINT PK_lesson_type PRIMARY KEY (id);


CREATE TABLE pricing (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_type_id INT NOT NULL,
 price_of_beginner INT NOT NULL,
 price_of_intermediate INT NOT NULL,
 price_of_advanced INT NOT NULL,
 sibling_discount DECIMAL(3, 2) NOT NULL,
 instructor_pay_percentage DECIMAL(3, 3) NOT NULL
);

ALTER TABLE pricing ADD CONSTRAINT PK_pricing PRIMARY KEY (id);


CREATE TABLE renting (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand_id INT NOT NULL,
 instrument_type_id INT NOT NULL,
 fee INT NOT NULL
);

ALTER TABLE renting ADD CONSTRAINT PK_renting PRIMARY KEY (id);


CREATE TABLE room (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 room_number VARCHAR(4) NOT NULL UNIQUE
);

ALTER TABLE room ADD CONSTRAINT PK_room PRIMARY KEY (id);


CREATE TABLE skill_level (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level VARCHAR(20) NOT NULL UNIQUE
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (id);


CREATE TABLE soundgood_music_school (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 address_id INT NOT NULL,
 max_capacity INT NOT NULL
);

ALTER TABLE soundgood_music_school ADD CONSTRAINT PK_soundgood_music_school PRIMARY KEY (id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level_id INT NOT NULL,
 address_id INT NOT NULL,
 enrolled BIT(1) NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 ssn CHAR(12) NOT NULL UNIQUE
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE contact_person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 address_id INT NOT NULL,
 relation_to_student VARCHAR(50) NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 ssn  CHAR(12) NOT NULL UNIQUE
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);


CREATE TABLE ensemble (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 skill_level_id INT NOT NULL,
 genre_id INT NOT NULL,
 room_id INT NOT NULL,
 pricing_id INT NOT NULL,
 start_time TIMESTAMP(6) NOT NULL,
 end_time TIMESTAMP(6) NOT NULL,
 max_no_of_students INT,
 min_no_of_students INT NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE group_lesson (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 skill_level_id INT NOT NULL,
 instrument_type_id INT NOT NULL,
 room_id INT NOT NULL,
 pricing_id INT NOT NULL,
 start_time TIMESTAMP(6) NOT NULL,
 end_time TIMESTAMP(6) NOT NULL,
 max_no_of_students INT,
 min_no_of_students INT NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (lesson_id);


CREATE TABLE individual_lesson (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type_id INT NOT NULL,
 skill_level_id INT NOT NULL,
 instructor_id INT NOT NULL,
 room_id INT NOT NULL,
 student_id INT NOT NULL,
 pricing_id INT NOT NULL,
 start_time TIMESTAMP(6) NOT NULL,
 end_time TIMESTAMP(6) NOT NULL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (lesson_id);


CREATE TABLE instructor_instrument_type (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 instrument_type_id INT NOT NULL
);

ALTER TABLE instructor_instrument_type ADD CONSTRAINT PK_instructor_instrument_type PRIMARY KEY (id);


CREATE TABLE instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand_id INT NOT NULL,
 instrument_type_id INT NOT NULL,
 renting_id INT NOT NULL,
 student_id INT NOT NULL,
 start_date DATE,
 return_date DATE
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE rental_records (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_id INT NOT NULL,
 student_id INT NOT NULL,
 start_date DATE NOT NULL,
 returned_date DATE NOT NULL
);

ALTER TABLE rental_records ADD CONSTRAINT PK_rental_records PRIMARY KEY (id);


CREATE TABLE sibling_to (
 sibling_student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE sibling_to ADD CONSTRAINT PK_sibling_to PRIMARY KEY (sibling_student_id);


CREATE TABLE students_of_ensemble (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE students_of_ensemble ADD CONSTRAINT PK_students_of_ensemble PRIMARY KEY (id,lesson_id);


CREATE TABLE students_of_group_lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE students_of_group_lesson ADD CONSTRAINT PK_students_of_group_lesson PRIMARY KEY (id,lesson_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE RESTRICT;


ALTER TABLE pricing ADD CONSTRAINT FK_pricing_0 FOREIGN KEY (lesson_type_id) REFERENCES lesson_type (id) ON DELETE RESTRICT;


ALTER TABLE renting ADD CONSTRAINT FK_renting_0 FOREIGN KEY (brand_id) REFERENCES brand (id) ON DELETE RESTRICT;
ALTER TABLE renting ADD CONSTRAINT FK_renting_1 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (id) ON DELETE RESTRICT;


ALTER TABLE soundgood_music_school ADD CONSTRAINT FK_soundgood_music_school_0 FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE RESTRICT;


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id) ON DELETE RESTRICT;
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE RESTRICT;


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (id) REFERENCES student (id) ON DELETE RESTRICT;
ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_1 FOREIGN KEY (address_id) REFERENCES address (id) ON DELETE RESTRICT;


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_2 FOREIGN KEY (genre_id) REFERENCES genre (id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_3 FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_4 FOREIGN KEY (pricing_id) REFERENCES pricing (id) ON DELETE RESTRICT;


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE RESTRICT;
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id) ON DELETE RESTRICT;
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_2 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (id) ON DELETE RESTRICT;
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_3 FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE RESTRICT;
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_4 FOREIGN KEY (pricing_id) REFERENCES pricing (id) ON DELETE RESTRICT;


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (id) ON DELETE RESTRICT;
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (id) ON DELETE RESTRICT;
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_2 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE RESTRICT;
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_3 FOREIGN KEY (room_id) REFERENCES room (id) ON DELETE RESTRICT;
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_4 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE RESTRICT;
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_5 FOREIGN KEY (pricing_id) REFERENCES pricing (id) ON DELETE RESTRICT;


ALTER TABLE instructor_instrument_type ADD CONSTRAINT FK_instructor_instrument_type_0 FOREIGN KEY (instructor_id) REFERENCES instructor (id) ON DELETE RESTRICT;
ALTER TABLE instructor_instrument_type ADD CONSTRAINT FK_instructor_instrument_type_1 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (id) ON DELETE RESTRICT;


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (brand_id) REFERENCES brand (id) ON DELETE RESTRICT;
ALTER TABLE instrument ADD CONSTRAINT FK_instrument_1 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (id) ON DELETE RESTRICT;
ALTER TABLE instrument ADD CONSTRAINT FK_instrument_2 FOREIGN KEY (renting_id) REFERENCES renting (id) ON DELETE RESTRICT;
ALTER TABLE instrument ADD CONSTRAINT FK_instrument_3 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE RESTRICT;


ALTER TABLE rental_records ADD CONSTRAINT FK_rental_records_0 FOREIGN KEY (instrument_id) REFERENCES instrument (id) ON DELETE RESTRICT;
ALTER TABLE rental_records ADD CONSTRAINT FK_rental_records_1 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE RESTRICT;


ALTER TABLE sibling_to ADD CONSTRAINT FK_sibling_to_0 FOREIGN KEY (sibling_student_id) REFERENCES student (id) ON DELETE RESTRICT;
ALTER TABLE sibling_to ADD CONSTRAINT FK_sibling_to_1 FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE RESTRICT;


ALTER TABLE students_of_ensemble ADD CONSTRAINT FK_students_of_ensemble_0 FOREIGN KEY (id) REFERENCES student (id) ON DELETE RESTRICT;
ALTER TABLE students_of_ensemble ADD CONSTRAINT FK_students_of_ensemble_1 FOREIGN KEY (lesson_id) REFERENCES ensemble (lesson_id) ON DELETE RESTRICT;


ALTER TABLE students_of_group_lesson ADD CONSTRAINT FK_students_of_group_lesson_0 FOREIGN KEY (id) REFERENCES student (id) ON DELETE RESTRICT;
ALTER TABLE students_of_group_lesson ADD CONSTRAINT FK_students_of_group_lesson_1 FOREIGN KEY (lesson_id) REFERENCES group_lesson (lesson_id) ON DELETE RESTRICT;


