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
VALUES ('Matt', 'Smith','Big Money Matt', 750000.00);
INSERT INTO customer_porfile (first_name, last_name, alias, bank_balance)
VALUES ('Rebecca', 'Miller','Ballin Becky', 870000.00);
INSERT INTO customer_porfile (first_name, last_name, alias, bank_balance)
VALUES ('GREG', 'Allen','Maverick',590000.00);
INSERT INTO customer_profile (first_name, last_name, alias, bank_balance)
VALUES ('Sharon','Johnson','Ms.Stacks',1200000.00);