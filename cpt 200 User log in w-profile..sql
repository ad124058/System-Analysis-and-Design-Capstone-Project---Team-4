CREATE TABLE customer_profile (
id INT AUTO_INCREMENT	PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
alias VARCHAR(50),
bank_balance DECIMAL(15, 2) DEFAULT 0.00,
wins INT DEFAULT 0, 
losses INT DEFAULT 0
);
INSERT INTO customer_profile (first_name, last_name, alias, bank_balance)
VALUES ('Matt', 'Smith','Big Money Matt', 750000.00, 120, 300);
INSERT INTO customer_porfile (first_name, last_name, alias, bank_balance)
VALUES ('Rebecca', 'Miller','Ballin Becky', 870000.00, 200,360);
INSERT INTO customer_porfile (first_name, last_name, alias, bank_balance)
VALUES ('GREG', 'Allen','Maverick',590000.00, 130, 420);
INSERT INTO customer_profile (first_name, last_name, alias, bank_balance)
VALUES ('Sharon','Johnson','Ms.Stacks',1200000.00, 335,315);

CREATE TABLE user_authenitcation
(
user_id INT auto_increment PRIMARY KEY,
username varchar (50) NOT NULL,
password varchar (50) NOT NULL,
email varchar (100) NOT NULL,
date_of_birth date NOT NULL,
registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
insert into user_authentication (username,password,email)
Values ('Matt Smith',' Moneymaker','matt.smith@Goatcasino.win');
insert into user_authentication (username,password,email)
Values ('Rebecca Miller','Bigballer','rebecca.miller@Goatcasion.win');
insert into user_authentication (username,password,email)
Values ('Greg Allen','Wildwest','greg.allen@Goatedcasion.win');



