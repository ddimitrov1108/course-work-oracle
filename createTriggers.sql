CREATE OR REPLACE SEQUENCE clients_seq START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE employee_positions_seq START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE employees_seq START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE car_types_seq START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE car_brands_seq START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE car_models_seq  START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE cars_seq START WITH 1 increment BY 1 nocache order;
CREATE OR REPLACE SEQUENCE rents_seq START WITH 1 increment BY 1 nocache order;

/* 
Known error:
    https://logbuffer.wordpress.com/2011/10/19/oracle-ora-0600-on-creating-trigger-on-11-2/
*/
ALTER SESSION SET PLSCOPE_SETTINGS = 'IDENTIFIERS:NONE';

CREATE OR REPLACE TRIGGER clients_trg
BEFORE INSERT ON clients
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN
    :new.id := clients_seq.nextval;
END;
/

CREATE OR REPLACE TRIGGER employee_positions_trg
BEFORE INSERT ON employee_positions
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN
    :new.id := employee_positions_seq.nextval;
END;
/

CREATE OR REPLACE TRIGGER employees_trg
BEFORE INSERT ON employees
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN
    :new.id := employees_seq.nextval;
END;
/

CREATE OR REPLACE TRIGGER car_types_trg
BEFORE INSERT ON car_types
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN 
    :new.id := car_types_seq.nextval; 
END;
/

CREATE OR REPLACE TRIGGER car_brands_trg
BEFORE INSERT ON car_brands
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN 
    :new.id := car_brands_seq.nextval; 
END;
/

CREATE OR REPLACE TRIGGER car_models_trg
BEFORE INSERT ON car_models
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN 
    :new.id := car_models_seq.nextval; 
END;
/

CREATE OR REPLACE TRIGGER cars_trg
BEFORE INSERT ON cars
FOR EACH ROW WHEN(new.id IS NULL)
    BEGIN 
        :new.id := cars_seq.nextval;
    END;
/

CREATE OR REPLACE TRIGGER rents_trg
BEFORE INSERT ON rents
FOR EACH ROW WHEN(new.id IS NULL)
BEGIN 
    :new.id := rents_seq.nextval; 
END;
/

ALTER SESSION SET PLSCOPE_SETTINGS = 'IDENTIFIERS:ALL';