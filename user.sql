CREATE TABLE IF NOT EXISTS users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(50),
    user_address VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(50)
);

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('johndoe', 'John', 'Doe', 'Male', '123 Main St', 'New York', 'NY', 'USA', '10001');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('janedoe', 'Jane', 'Doe', 'Female', '456 Elm St', 'Los Angeles', 'CA', 'USA', '90001');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('bobsmith', 'Bob', 'Smith', 'Male', '789 Oak St', 'Chicago', 'IL', 'USA', '60601');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('sallyjohnson', 'Sally', 'Johnson', 'Female', '321 Maple St', 'Houston', 'TX', 'USA', '77001');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('tomjones', 'Tom', 'Jones', 'Male', '654 Pine St', 'Miami', 'FL', 'USA', '33101');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('janetaylor', 'Jane', 'Taylor', 'Female', '987 Oak St', 'Seattle', 'WA', 'USA', '98101');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('michaelbrown', 'Michael', 'Brown', 'Male', '456 Main St', 'Boston', 'MA', 'USA', '02101');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('amandasmith', 'Amanda', 'Smith', 'Female', '123 Elm St', 'San Francisco', 'CA', 'USA', '94101');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('davemiller', 'Dave', 'Miller', 'Male', '789 Pine St', 'Denver', 'CO', 'USA', '80201');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('sarahjones', 'Sarah', 'Jones', 'Female', '654 Oak St', 'Dallas', 'TX', 'USA', '75201');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('jimmygarcia', 'Jimmy', 'Garcia', 'Male', '321 Main St', 'Phoenix', 'AZ', 'USA', '85001');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('laurenscott', 'Lauren', 'Scott', 'Female', '456 Maple St', 'Atlanta', 'GA', 'USA', '30301');

INSERT INTO users (username, first_name, last_name, gender, user_address, city, state, country, zip_code)
VALUES ('adamjones', 'Adam', 'Jones', 'Male', '654 Elm St', 'Philadelphia', 'PA', 'USA', '19101')


