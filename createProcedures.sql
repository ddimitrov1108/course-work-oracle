CREATE OR REPLACE PROCEDURE clients_insert (
    full_name        clients.full_name%TYPE,
    address_city     clients.address_city%TYPE,
    address_street   clients.address_street%TYPE,
    phone_number     clients.phone_number%TYPE
) AS
BEGIN
    INSERT INTO clients VALUES (
        NULL,
        full_name,
        address_city,
        address_street,
        phone_number
    );
END;
/

CREATE OR REPLACE PROCEDURE employee_positions_insert (
    position employee_positions.position%TYPE
) AS
BEGIN
    INSERT INTO employee_positions VALUES (
        NULL,
        position
    );
END;
/

CREATE OR REPLACE PROCEDURE employees_insert (
    full_name      employees.full_name%TYPE,
    position_id    employees.position_id%TYPE,
    phone_number   employees.phone_number%TYPE
) AS
BEGIN
    INSERT INTO employees VALUES (
        NULL,
        full_name,
        position_id,
        phone_number
    );
END;
/

CREATE OR REPLACE PROCEDURE car_types_insert (
    type car_types.type%TYPE
) AS
BEGIN
    INSERT INTO car_types VALUES (
        NULL,
        type
    );
END;
/

CREATE OR REPLACE PROCEDURE car_brands_insert (
    brand car_brands.brand%TYPE
) AS
BEGIN
    INSERT INTO car_brands VALUES (
        NULL,
        brand
    );
END;
/

CREATE OR REPLACE PROCEDURE car_models_insert (
    model      car_models.model%TYPE,
    brand_id   car_models.brand_id%TYPE
) AS
BEGIN
    INSERT INTO car_models VALUES (
        NULL,
        model,
        brand_id
    );
END;
/

CREATE OR REPLACE PROCEDURE cars_insert (
    type_id           cars.type_id%TYPE,
    brand             cars.brand%TYPE,
    model_id          cars.model_id%TYPE,
    year_of_release   cars.year_of_release%TYPE,
    paint_color       cars.paint_color%TYPE,
    passed_km         cars.passed_km%TYPE,
    price_for_day     cars.price_for_day%TYPE
) AS
BEGIN
    INSERT INTO cars VALUES (
        NULL,
        type_id,
        brand,
        model_id,
        year_of_release,
        paint_color,
        passed_km,
        price_for_day
    );
END;
/

CREATE OR REPLACE PROCEDURE rents_insert (
    client_id      rents.client_id%TYPE,
    car_id         rents.car_id%TYPE,
    employee_id    rents.employee_id%TYPE,
    date_of_rent   rents.date_of_rent%TYPE,
    days_of_rent   rents.days_of_rent%TYPE
) AS
BEGIN
    INSERT INTO rents VALUES (
        NULL,
        client_id,
        car_id,
        employee_id,
        date_of_rent,
        days_of_rent
    );
END;
/

CREATE OR REPLACE PROCEDURE clients_delete(id_to_delete clients.id%type) AS
BEGIN
    DELETE FROM clients WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE employee_positions_delete(id_to_delete employee_positions.id%type) AS
BEGIN
    DELETE FROM employee_positions WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE employees_delete(id_to_delete employees.id%type) as
BEGIN
    DELETE FROM employees WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE car_types_delete(id_to_delete car_types.id%type) AS
BEGIN
    DELETE FROM car_types WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE car_brands_delete(id_to_delete car_brands.id%type) AS
BEGIN
    DELETE FROM car_brands WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE car_models_delete(id_to_delete car_models.id%type) AS
BEGIN
    DELETE FROM car_models WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE cars_delete(id_to_delete cars.id%type) AS
BEGIN
    DELETE FROM cars WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE rents_delete(id_to_delete rents.id%type) AS
BEGIN
    DELETE FROM rents WHERE id = id_to_delete;
END;
/

CREATE OR REPLACE PROCEDURE clients_update (
    id_to_update         clients.id%TYPE,
    new_full_name        clients.full_name%TYPE,
    new_address_city     clients.address_city%TYPE,
    new_address_street   clients.address_street%TYPE,
    new_phone_number     clients.phone_number%TYPE
) AS
BEGIN
    UPDATE clients
    SET
        full_name = new_full_name,
        address_city = new_address_city,
        address_street = new_address_street,
        phone_number = new_phone_number
    WHERE
        id = id_to_update;

END;
/

CREATE OR REPLACE PROCEDURE employee_positions_update ( id_to_update employee_positions.id%type,
new_position employee_positions.positions%TYPE
) AS
BEGIN
    UPDATE employee_positions
    SET
        position = new_position
    WHERE
        id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE employees_update (
    id_to_update       employees.id%TYPE,
    new_full_name      employees.full_name%TYPE,
    new_position_id    employees.position_id%TYPE,
    new_phone_number   employees.phone_number%TYPE
) AS
BEGIN
    UPDATE employees
    SET
        full_name = new_full_name,
        position_id = new_position_id,
        phone_number = new_phone_number
    WHERE
        id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE car_types_update (
    id_to_update car_types.id%type,
    new_type car_types.type%type
) AS
BEGIN
    UPDATE car_types
    SET
        type = new_type
    WHERE
        id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE car_brands_update (
    id_to_update car_brands.id%type,
    new_brand car_brands.brand%type
) AS
BEGIN
    UPDATE car_brands
    SET
        brand = new_brand
    WHERE
        id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE car_models_update (
    id_to_update car_models.id%type,
    new_model car_models.model%type,
    new_brand_id car_models.brand_id%type
) AS
BEGIN
    UPDATE car_models
    SET
        model = new_model,
        brand_id = new_brand_id
    WHERE
        id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE cars_update (
    id_to_update cars.id%type,
    new_type_id cars.type_id%type,
    new_brand cars.brand%type,
    new_model_id cars.model_id%type,
    new_year_of_release cars.year_of_release%type,
    new_paint_color cars.paint_color%type,
    new_passed_km cars.passed_km%type,
    new_price_for_day cars.price_for_day%type
) AS
BEGIN
    UPDATE cars
    SET
        type_id = new_type_id,
        brand = new_brand,
        model_id = new_model_id,
        year_of_release = new_year_of_release,
        paint_color = new_paint_color,
        passed_km = new_passed_km,
        price_for_day = new_price_for_day
    WHERE
        id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE rents_update (
    id_to_update rents.id%type,
    new_client_id rents.client_id%type,
    new_car_id rents.car_id%type,
    new_employee_id rents.employee_id%type,
    new_date_of_rent rents.date_of_rent%type,
    new_days_of_rent rents.days_of_rent%type
) AS
BEGIN
    UPDATE rents
    SET
    client_id = new_client_id,
    car_id = new_car_id,
    employee_id = new_employee_id,
    date_of_rent = new_date_of_rent,
    days_of_rent = new_days_of_rent
WHERE
    id = id_to_update;
END;
/

CREATE OR REPLACE PROCEDURE search_car (
    s_car_brand      cars.brand%TYPE,
    s_car_model       car_models.model%TYPE,
    s_car_type        car_types.type%TYPE,
    s_price_for_day   cars.price_for_day%TYPE
) 
IS
BEGIN
    DECLARE
        CURSOR car_rows IS
        SELECT
            brand,
            car_models.model,
            car_types.type,
            year_of_release,
            paint_color,
            passed_km,
            price_for_day
        FROM
            cars
            INNER JOIN car_models ON upper(car_models.model) = upper(s_car_model)
            INNER JOIN car_types ON upper(car_types.type) = upper(s_car_type)
        WHERE
            upper(brand) = upper(s_car_brand)
            AND price_for_day >= s_price_for_day - 15
            AND price_for_day <= s_price_for_day + 15
        ORDER BY price_for_day ASC;

    BEGIN
        dbms_output.put_line('Search Results for: ' || s_car_brand || ' ' || s_car_model);
        FOR car IN car_rows LOOP
            dbms_output.put_line('Brand: ' || car.brand);
            dbms_output.put_line('Model: ' || car.model);
            dbms_output.put_line('YearOfRelease: ' || car.year_of_release);
            dbms_output.put_line('Paint: ' || car.paint_color);
            dbms_output.put_line('PriceForDay: ' || car.price_for_day);
            dbms_output.put_line('PassedKm: ' || car.passed_km);
            dbms_output.put_line('-----------');
        END LOOP;
    END;
END;
/

CREATE OR REPLACE PROCEDURE search_car_rentals_by_employee (
    s_employee_full_name employees.full_name%TYPE
) IS
BEGIN
    DECLARE
        CURSOR car_rental_rows IS
        SELECT
            clients.full_name     AS client_full_name,
            cars.brand AS car_brand,
            car_models.model AS car_model,
            car_types.type AS car_type,
            date_of_rent,
            days_of_rent
        FROM
            rents
            INNER JOIN cars ON cars.id = car_id
            INNER JOIN car_models ON cars.model_id = car_models.id
            INNER JOIN car_types ON cars.type_id = car_types.id
            INNER JOIN clients ON clients.id = client_id
            INNER JOIN employees ON employees.id = employee_id
        WHERE
            upper(employees.full_name) = upper(s_employee_full_name)
        ORDER BY date_of_rent DESC, car_types.type ASC;

    BEGIN
        dbms_output.put_line('Car rentals from Employee: ' || s_employee_full_name);
        
        FOR car_rental IN car_rental_rows LOOP
            dbms_output.put_line('Client: ' || car_rental.client_full_name);
            dbms_output.put_line('Car: ' || car_rental.car_brand || ' ' || car_rental.car_model || ' ' || car_rental.car_type);
            dbms_output.put_line('DateOfRent: ' || car_rental.date_of_rent);
            dbms_output.put_line('DaysOfRent: ' || car_rental.days_of_rent);
            dbms_output.put_line('-----------');
        END LOOP;
    END;
END;
/

CREATE OR REPLACE PROCEDURE get_latest_rents
IS
BEGIN
    DECLARE
        CURSOR latest_rents_rows IS
        SELECT
            clients.full_name     AS client_full_name,
            cars.brand AS car_brand,
            car_models.model AS car_model,
            car_types.type AS car_type,
            employees.full_name   AS employee_full_name,
            date_of_rent,
            days_of_rent
        FROM
            rents
            INNER JOIN cars ON cars.id = car_id
            INNER JOIN car_models ON cars.model_id = car_models.id
            INNER JOIN car_types ON cars.type_id = car_types.id
            INNER JOIN clients ON clients.id = client_id
            INNER JOIN employees ON employees.id = employee_id
        WHERE ROWNUM <= 10
        ORDER BY days_of_rent DESC;

    BEGIN
        dbms_output.put_line('Latest rents: ');

        FOR rent IN latest_rents_rows LOOP
            dbms_output.put_line('Client: ' || rent.client_full_name);
            dbms_output.put_line('Employee: ' || rent.employee_full_name);
            dbms_output.put_line('Car: ' || rent.car_brand || ' ' || rent.car_model || ' ' || rent.car_type);
            dbms_output.put_line('DateOfRent: ' || rent.date_of_rent);
            dbms_output.put_line('DaysOfRent: ' || rent.days_of_rent);
            dbms_output.put_line('-----------');
        END LOOP;
    END;
END;
/

CREATE OR REPLACE PROCEDURE search_rented_cars_from_client (
    s_client_full_name clients.full_name%TYPE
) 
IS
BEGIN
    DECLARE
        CURSOR cars_rented_rows IS
        SELECT
            cars.brand AS car_brand,
            car_models.model AS car_model,
            car_types.type AS car_type,
            date_of_rent,
            days_of_rent
        FROM
            rents
            INNER JOIN cars ON cars.id = car_id
            INNER JOIN car_models ON cars.model_id = car_models.id
            INNER JOIN car_types ON cars.type_id = car_types.id
            INNER JOIN clients ON clients.id = client_id
            INNER JOIN employees ON employees.id = employee_id
        WHERE
            upper(clients.full_name) = upper(s_client_full_name)
        ORDER BY date_of_rent ASC;

    BEGIN
        dbms_output.put_line('Cars rented by: ' || s_client_full_name);

        FOR car IN cars_rented_rows LOOP
            dbms_output.put_line('Car: ' || car.car_brand || ' ' || car.car_model || ' ' || car.car_type);
            dbms_output.put_line('DateOfRent: ' || car.date_of_rent);
            dbms_output.put_line('DaysOfRent: ' || car.days_of_rent);
            dbms_output.put_line('-----------');
        END LOOP;
    END;
END;
/

CREATE OR REPLACE PROCEDURE get_rented_cars_in_period (
    from_period_date VARCHAR,
    to_period_date VARCHAR
) IS
BEGIN
    DECLARE
        CURSOR latest_rents_rows IS
        SELECT
            clients.full_name     AS client_full_name,
            cars.brand            AS car_brand,
            car_models.model      AS car_model,
            car_types.type        AS car_type,
            employees.full_name   AS employee_full_name,
            date_of_rent,
            days_of_rent
        FROM
            rents
            INNER JOIN cars ON cars.id = car_id
            INNER JOIN car_models ON cars.model_id = car_models.id
            INNER JOIN car_types ON cars.type_id = car_types.id
            INNER JOIN clients ON clients.id = client_id
            INNER JOIN employees ON employees.id = employee_id
        WHERE
            date_of_rent BETWEEN TO_DATE(from_period_date, 'DD/MM/YYYY') AND TO_DATE(to_period_date, 'DD/MM/YYYY')
        ORDER BY
            clients.full_name DESC;

    BEGIN
        dbms_output.put_line('Latest rents: ');
        FOR rent IN latest_rents_rows LOOP
            dbms_output.put_line('Client: ' || rent.client_full_name);
            dbms_output.put_line('Employee: ' || rent.employee_full_name);
            dbms_output.put_line('Car: ' || rent.car_brand || ' ' || rent.car_model || ' ' || rent.car_type);

            dbms_output.put_line('DateOfRent: ' || rent.date_of_rent);
            dbms_output.put_line('DaysOfRent: ' || rent.days_of_rent);
            dbms_output.put_line('-----------');
        END LOOP;

    END;
END;