CREATE TABLE address (
 address_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 street VARCHAR(100) NOT NULL,
 zip VARCHAR(10) NOT NULL,
 city VARCHAR(50) NOT NULL
);

ALTER TABLE address ADD CONSTRAINT PK_address PRIMARY KEY (address_id);


CREATE TABLE brand (
 brand_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand VARCHAR(50) UNIQUE NOT NULL
);

ALTER TABLE brand ADD CONSTRAINT PK_brand PRIMARY KEY (brand_id);


CREATE TABLE contact_person (
 contact_person_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 address_id INT NOT NULL,
 relation_to_student VARCHAR(50) NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 ssn  CHAR(12) UNIQUE NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (contact_person_id);


CREATE TABLE genre (
 genre_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 genre VARCHAR(20) UNIQUE NOT NULL
);

ALTER TABLE genre ADD CONSTRAINT PK_genre PRIMARY KEY (genre_id);


CREATE TABLE instructor (
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 address_id INT NOT NULL,
 active BIT(1) NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 ssn CHAR(12) UNIQUE NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE instrument_type (
 instrument_type_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type VARCHAR(15) UNIQUE NOT NULL
);

ALTER TABLE instrument_type ADD CONSTRAINT PK_instrument_type PRIMARY KEY (instrument_type_id);


CREATE TABLE lesson_type (
 lesson_type_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_type VARCHAR(20) UNIQUE NOT NULL
);

ALTER TABLE lesson_type ADD CONSTRAINT PK_lesson_type PRIMARY KEY (lesson_type_id);


CREATE TABLE pricing (
 pricing_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_type_id INT NOT NULL,
 price_of_beginner INT CHECK (price_of_beginner > 0) NOT NULL,
 price_of_intermediate INT CHECK (price_of_intermediate > 0) NOT NULL,
 price_of_advanced INT CHECK (price_of_advanced > 0) NOT NULL,
 sibling_discount1 DECIMAL(3, 2) CHECK (sibling_discount1 > 0 AND sibling_discount1 < 1) NOT NULL,
 sibling_discount2 DECIMAL(3, 2) CHECK (sibling_discount2 > 0 AND sibling_discount2 < 1) NOT NULL,
 instructor_pay_percentage DECIMAL(3, 3) CHECK (instructor_pay_percentage > 0 AND instructor_pay_percentage < 1) NOT NULL
);

ALTER TABLE pricing ADD CONSTRAINT PK_pricing PRIMARY KEY (pricing_id);


CREATE TABLE renting (
 renting_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand_id INT NOT NULL,
 instrument_type_id INT NOT NULL,
 fee INT CHECK (fee > 0) NOT NULL
);

ALTER TABLE renting ADD CONSTRAINT PK_renting PRIMARY KEY (renting_id);


CREATE TABLE room (
 room_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 room_number VARCHAR(4) UNIQUE NOT NULL
);

ALTER TABLE room ADD CONSTRAINT PK_room PRIMARY KEY (room_id);


CREATE TABLE skill_level (
 skill_level_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level VARCHAR(20) UNIQUE NOT NULL
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (skill_level_id);


CREATE TABLE soundgood_music_school (
 school_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 address_id INT NOT NULL,
 max_capacity INT NOT NULL
);

ALTER TABLE soundgood_music_school ADD CONSTRAINT PK_soundgood_music_school PRIMARY KEY (school_id);


CREATE TABLE student (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level_id INT NOT NULL,
 address_id INT NOT NULL,
 enrolled BIT(1) NOT NULL,
 phone_number VARCHAR(15) NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 mail_address VARCHAR(100) NOT NULL,
 ssn CHAR(12) UNIQUE NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE student_contact_person (
 student_id INT NOT NULL,
 contact_person_id INT NOT NULL
);

ALTER TABLE student_contact_person ADD CONSTRAINT PK_student_contact_person PRIMARY KEY (student_id,contact_person_id);


CREATE TABLE ensemble (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 skill_level_id INT NOT NULL,
 genre_id INT NOT NULL,
 room_id INT NOT NULL,
 pricing_id INT NOT NULL,
 start_time TIMESTAMP(6) CHECK (EXTRACT(HOUR FROM start_time) >= 7 AND EXTRACT(HOUR FROM start_time) <= 20) NOT NULL,
 end_time TIMESTAMP(6) CHECK (start_time < end_time AND EXTRACT(HOUR FROM end_time) <= 21 AND DATE(start_time) = DATE(end_time)) NOT NULL,
 max_no_of_students INT CHECK (max_no_of_students > min_no_of_students),
 min_no_of_students INT CHECK (min_no_of_students > 0) NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);


CREATE TABLE gro (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT NOT NULL,
 skill_level_id INT NOT NULL,
 instrument_type_id INT NOT NULL,
 room_id INT NOT NULL,
 pricing_id INT NOT NULL,
 start_time TIMESTAMP(6) CHECK (EXTRACT(HOUR FROM start_time) >= 7 AND EXTRACT(HOUR FROM start_time) <= 20) NOT NULL,
 end_time TIMESTAMP(6) CHECK (start_time < end_time AND EXTRACT(HOUR FROM end_time) <= 21 AND DATE(start_time) = DATE(end_time)) NOT NULL,
 max_no_of_students INT CHECK (max_no_of_students > min_no_of_students),
 min_no_of_students INT CHECK (min_no_of_students > 0) NOT NULL
);

ALTER TABLE gro ADD CONSTRAINT PK_group PRIMARY KEY (lesson_id);


CREATE TABLE individual (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type_id INT NOT NULL,
 skill_level_id INT NOT NULL,
 instructor_id INT NOT NULL,
 room_id INT NOT NULL,
 student_id INT NOT NULL,
 pricing_id INT NOT NULL,
 start_time TIMESTAMP(6) CHECK (EXTRACT(HOUR FROM start_time) >= 7 AND EXTRACT(HOUR FROM start_time) <= 20) NOT NULL,
 end_time TIMESTAMP(6) CHECK (start_time < end_time AND EXTRACT(HOUR FROM end_time) <= 21 AND DATE(start_time) = DATE(end_time)) NOT NULL
);

ALTER TABLE individual ADD CONSTRAINT PK_individual PRIMARY KEY (lesson_id);


CREATE TABLE instructor_instrument_type (
 instructor_id INT NOT NULL,
 instrument_type_id INT NOT NULL
);

ALTER TABLE instructor_instrument_type ADD CONSTRAINT PK_instructor_instrument_type PRIMARY KEY (instructor_id,instrument_type_id);


CREATE TABLE instrument (
 instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 brand_id INT NOT NULL,
 instrument_type_id INT NOT NULL,
 renting_id INT NOT NULL,
 student_id INT,
 start_date DATE,
 return_date DATE CHECK (start_date < return_date)
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE rental_records (
 rental_record_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_id INT NOT NULL,
 student_id INT NOT NULL,
 start_date DATE NOT NULL,
 returned_date DATE CHECK (start_date < returned_date) NOT NULL
);

ALTER TABLE rental_records ADD CONSTRAINT PK_rental_records PRIMARY KEY (rental_record_id);


CREATE TABLE sibling_to (
 sibling_student_id INT NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE sibling_to ADD CONSTRAINT PK_sibling_to PRIMARY KEY (sibling_student_id,student_id);


CREATE TABLE students_of_ensemble (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE students_of_ensemble ADD CONSTRAINT PK_students_of_ensemble PRIMARY KEY (student_id,lesson_id);


CREATE TABLE students_of_group (
 student_id INT NOT NULL,
 lesson_id INT NOT NULL
);

ALTER TABLE students_of_group ADD CONSTRAINT PK_students_of_group PRIMARY KEY (student_id,lesson_id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (address_id) REFERENCES address (address_id) ON DELETE RESTRICT;


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (address_id) REFERENCES address (address_id) ON DELETE RESTRICT;


ALTER TABLE pricing ADD CONSTRAINT FK_pricing_0 FOREIGN KEY (lesson_type_id) REFERENCES lesson_type (lesson_type_id) ON DELETE RESTRICT;


ALTER TABLE renting ADD CONSTRAINT FK_renting_0 FOREIGN KEY (brand_id) REFERENCES brand (brand_id) ON DELETE RESTRICT;
ALTER TABLE renting ADD CONSTRAINT FK_renting_1 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (instrument_type_id) ON DELETE RESTRICT;


ALTER TABLE soundgood_music_school ADD CONSTRAINT FK_soundgood_music_school_0 FOREIGN KEY (address_id) REFERENCES address (address_id) ON DELETE RESTRICT;


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (skill_level_id) REFERENCES skill_level (skill_level_id) ON DELETE RESTRICT;
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (address_id) REFERENCES address (address_id) ON DELETE RESTRICT;


ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;
ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_1 FOREIGN KEY (contact_person_id) REFERENCES contact_person (contact_person_id) ON DELETE RESTRICT;


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (skill_level_id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_2 FOREIGN KEY (genre_id) REFERENCES genre (genre_id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_3 FOREIGN KEY (room_id) REFERENCES room (room_id) ON DELETE RESTRICT;
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_4 FOREIGN KEY (pricing_id) REFERENCES pricing (pricing_id) ON DELETE RESTRICT;


ALTER TABLE gro ADD CONSTRAINT FK_group_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE RESTRICT;
ALTER TABLE gro ADD CONSTRAINT FK_group_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (skill_level_id) ON DELETE RESTRICT;
ALTER TABLE gro ADD CONSTRAINT FK_group_2 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (instrument_type_id) ON DELETE RESTRICT;
ALTER TABLE gro ADD CONSTRAINT FK_group_3 FOREIGN KEY (room_id) REFERENCES room (room_id) ON DELETE RESTRICT;
ALTER TABLE gro ADD CONSTRAINT FK_group_4 FOREIGN KEY (pricing_id) REFERENCES pricing (pricing_id) ON DELETE RESTRICT;


ALTER TABLE individual ADD CONSTRAINT FK_individual_0 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (instrument_type_id) ON DELETE RESTRICT;
ALTER TABLE individual ADD CONSTRAINT FK_individual_1 FOREIGN KEY (skill_level_id) REFERENCES skill_level (skill_level_id) ON DELETE RESTRICT;
ALTER TABLE individual ADD CONSTRAINT FK_individual_2 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE RESTRICT;
ALTER TABLE individual ADD CONSTRAINT FK_individual_3 FOREIGN KEY (room_id) REFERENCES room (room_id) ON DELETE RESTRICT;
ALTER TABLE individual ADD CONSTRAINT FK_individual_4 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;
ALTER TABLE individual ADD CONSTRAINT FK_individual_5 FOREIGN KEY (pricing_id) REFERENCES pricing (pricing_id) ON DELETE RESTRICT;


ALTER TABLE instructor_instrument_type ADD CONSTRAINT FK_instructor_instrument_type_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE RESTRICT;
ALTER TABLE instructor_instrument_type ADD CONSTRAINT FK_instructor_instrument_type_1 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (instrument_type_id) ON DELETE RESTRICT;


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (brand_id) REFERENCES brand (brand_id) ON DELETE RESTRICT;
ALTER TABLE instrument ADD CONSTRAINT FK_instrument_1 FOREIGN KEY (instrument_type_id) REFERENCES instrument_type (instrument_type_id) ON DELETE RESTRICT;
ALTER TABLE instrument ADD CONSTRAINT FK_instrument_2 FOREIGN KEY (renting_id) REFERENCES renting (renting_id) ON DELETE RESTRICT;
ALTER TABLE instrument ADD CONSTRAINT FK_instrument_3 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;


ALTER TABLE rental_records ADD CONSTRAINT FK_rental_records_0 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id) ON DELETE RESTRICT;
ALTER TABLE rental_records ADD CONSTRAINT FK_rental_records_1 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;


ALTER TABLE sibling_to ADD CONSTRAINT FK_sibling_to_0 FOREIGN KEY (sibling_student_id) REFERENCES student (student_id) ON DELETE RESTRICT;
ALTER TABLE sibling_to ADD CONSTRAINT FK_sibling_to_1 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;


ALTER TABLE students_of_ensemble ADD CONSTRAINT FK_students_of_ensemble_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;
ALTER TABLE students_of_ensemble ADD CONSTRAINT FK_students_of_ensemble_1 FOREIGN KEY (lesson_id) REFERENCES ensemble (lesson_id) ON DELETE RESTRICT;


ALTER TABLE students_of_group ADD CONSTRAINT FK_students_of_group_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE RESTRICT;
ALTER TABLE students_of_group ADD CONSTRAINT FK_students_of_group_1 FOREIGN KEY (lesson_id) REFERENCES gro (lesson_id) ON DELETE RESTRICT;


