CREATE DATABASE goated_casino_blackjack;
USE goated_casino_blackjack;
CREATE TABLE customer_profile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    alias VARCHAR(50),
    bank_balance DECIMAL(15, 2) DEFAULT 0.00,
    wins INT DEFAULT 0, 
    losses INT DEFAULT 0
);
INSERT INTO customer_profile (first_name, last_name, alias, bank_balance, wins, losses)
VALUES ('Matt', 'Smith', 'Big Money Matt', 750000.00, 120, 300),
       ('Rebecca', 'Miller', 'Ballin Becky', 870000.00, 200, 360),
       ('Greg', 'Allen', 'Maverick', 590000.00, 130, 420),
       ('Sharon', 'Johnson', 'Ms.Stacks', 1200000.00, 335, 315);
CREATE TABLE user_authentication (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);
INSERT INTO user_authentication (username, password, email, date_of_birth)
VALUES ('Matt Smith', 'Moneymaker', 'matt.smith@goatcasino.win', '1990-05-15'),
       ('Rebecca Miller', 'Bigballer', 'rebecca.miller@goatcasino.win', '1985-09-22'),
       ('Greg Allen', 'Wildwest', 'greg.allen@goatcasino.win', '1982-11-30');
	
CREATE TABLE user_authenitcation
(
user_id INT auto_increment PRIMARY KEY,
username varchar (50) NOT NULL,
password varchar (50) NOT NULL,
email varchar (100) NOT NULL
);
insert into user_authentication (username,password,email)
Values ('Matt Smith',' Moneymaker','matt.smith@Goatcasino.win');
insert into user_authentication (username,password,email)
Values ('Rebecca Miller','Bigballer','rebecca.miller@Goatcasion.win');
insert into user_authentication (username,password,email)
Values ('Greg Allen','Wildwest','greg.allen@Goatedcasion.win');
insert into user_authentication (username,password,email)
Values ('Sharon Johnson','Staystackin','sharon.johnson@Goatedcasiono.win');





