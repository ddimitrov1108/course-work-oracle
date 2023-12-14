CREATE OR REPLACE TABLE clients(
    id INT,
    full_name VARCHAR(40) NOT NULL,
    address_city VARCHAR(20) NOT NULL,
    address_street VARCHAR(40) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
);

CREATE OR REPLACE TABLE employee_positions(
    id INT,
    position VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
); 

CREATE OR REPLACE TABLE employees(
    id INT,
    full_name VARCHAR(40) NOT NULL,
    position_id REFERENCES employee_positions(id),
    phone_number VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
);

CREATE OR REPLACE TABLE car_types(
    id INT,
    type VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
); 

CREATE OR REPLACE TABLE car_brands(
    id INT,
    brand VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

CREATE OR REPLACE TABLE car_models(
    id INT,
    model VARCHAR(20),
    brand_id REFERENCES car_brands(id),
    PRIMARY KEY(id)
);

CREATE OR REPLACE TABLE cars(
    id INT,
    type_id REFERENCES car_types(id),
    brand VARCHAR(20) NOT NULL,
    model_id REFERENCES car_models(id),
    year_of_release date NOT NULL,
    paint_color VARCHAR(20) NOT NULL,
    passed_km float NOT NULL,
    price_for_day float NOT NULL,
    PRIMARY KEY(id)
);

CREATE OR REPLACE TABLE rents(
    id INT,
    client_id REFERENCES clients(id),
    car_id REFERENCES cars(id),
    employee_id REFERENCES employees(id),
    date_of_rent date NOT NULL,
    days_of_rent int NOT NULL,
    PRIMARY KEY(id)
);