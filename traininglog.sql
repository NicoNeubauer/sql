	

CREATE DATABASE trlog COLLATE = utf8_general_ci;


USE trlog;


Create table club
(code varchar(20) NOT NULL primary key,
club_name varchar(40),
city varchar(40),
county varchar(25));

Create table athlete
(id int NOT NULL primary key,
email varchar(20),
name varchar(30),
gender varchar(6),
year_of_birth year,
min_heart_rate int,
max_heart_rate int,
club_code varchar(20),
CONSTRAINT fk_club FOREIGN KEY (club_code) REFERENCES club(code));

Create table training_session
(athlete_id int NOT NULL,
read_date date NOT NULL, 
start_time time NOT NULL, 
duration int, 
distance decimal(3,1), 
activity varchar(25), 
avg_heart_rate int,
comment varchar(50),
CONSTRAINT pk_trn PRIMARY KEY(athlete_id, read_date, start_time),
CONSTRAINT fk_athlete FOREIGN KEY (athlete_id) REFERENCES athlete(id));



INSERT INTO club
VALUES ('vindil', 'Vind IL', 'Gjøvik', 'Oppland');
INSERT INTO club
VALUES ('lillehammerif', 'Lillehammer IF', 'Gjøvik', 'Oppland');
INSERT INTO club
VALUES ('trondhjemsturn', 'Trondhjems Turnforening', 'Trondheim', 'Trøndelag');



INSERT INTO athlete
VALUES (1, 'pp@realmail.no', 'Per persen', 'Male', '2002', 42, 203, 'vindil');
INSERT INTO athlete
VALUES (2, 'sf@realmail.no', 'Siri Fjell', 'Female', '1989', 55, NULL, 'vindil');
INSERT INTO athlete
VALUES (3, 'oo@realmail.no', 'Olga Olgasdottir', 'Female', '1997', NULL, 192, 'lillehammerif');
INSERT INTO athlete
VALUES (4, 'rr@realmail.no', 'Robert Robertson', 'Male', '2005', 50, 208, 'trondhjemsturn');
INSERT INTO athlete
VALUES (5, 'rh@realmail.no', 'Rune Hjelsvold', 'Male', '1963', NULL, NULL, 'trondhjemsturn');
INSERT INTO athlete
VALUES (6, 'th@realmail.no', 'Trude Hellvik', 'Female', '1972', 62, 173, 'trondhjemsturn');


INSERT INTO training_session 
VALUES (1, '2019-06-01', '06:30:12', 36, 8.2, 'Running', 175, 'Good run');
INSERT INTO training_session 
VALUES (1, '2019-06-01', '17:12:38', 91, NULL, 'Weight training', NULL, 'Upper body- medium heavy weights');
INSERT INTO training_session 
VALUES (1, '2019-06-02', '12:12:13', 123, 55.6, 'Cycling', 162, 'Quite a blustery day');
INSERT INTO training_session 
VALUES (1, '2019-06-03', '08:27:55', 58, 3, 'Swimming', NULL, NULL);
INSERT INTO training_session 
VALUES (2, '2019-06-07', '11:20:57', 108, 12.43, 'Walking', NULL,'Muddy paths; walked in mountaineering boots');
INSERT INTO training_session 
VALUES (3, '2019-06-03', '18:32:46', 117, 12.43, 'Indoor rock climbing', NULL,'Endurance session');
INSERT INTO training_session 
VALUES (4, '2019-06-07', '12:00:02', 22, 10, 'Running', 183, NULL);
INSERT INTO training_session 
VALUES (5, '2019-06-07', '09:33:29', 240, NULL, 'Outdoor rock climbing', NULL,'Climbed some trad and some more sports routes');
INSERT INTO training_session 
VALUES (6, '2019-06-06', '15:53:26', 186, 17.7, 'Walking', 108, NULL);





