BEGIN
    employee_positions_insert('director');
    employee_positions_insert('products manager');
    employee_positions_insert('executive');
    employee_positions_insert('seller');

    employees_insert('Georgi Dimitrov', 1, '0880099320');
    employees_insert('Stefan Georgiev', 2, '0881199321');
    employees_insert('Petur Ivanov', 3, '0882299322');
    employees_insert('Petur Petrov', 4, '0883399323');
    employees_insert('Martin Stamboliiski', 4, '0884499324');
    employees_insert('Angel Stefanov', 4, '0885599325');
    employees_insert('Yoan Qnev', 4, '0886699326');

    clients_insert('Daniel Dimitrov', 'Burgas', 'Izgrev', '0887575232');
    clients_insert('Ivailo Vasilev', 'Ruse', 'Bqla', '0892134455');
    clients_insert('Dimitur Zurlev', 'Turgovishte', 'Rusenska 4', '08770774666');
    clients_insert('Nikolai Zhelev', 'Shumen', 'Stefan Stambolov 12', '08770774563');
    clients_insert('Dimitur Stoqnov', 'Varna', 'Voivoda 59', '08770774669');
    clients_insert('Aleksandur Vasilev', 'Plovdiv', 'Centur 99', '08770774667');
    clients_insert('Georgi Evtimov', 'Sofiq', 'Manastirski Livadi', '08770774663');

    car_types_insert('Sedan');
    car_types_insert('Kombi');
    car_types_insert('Hatchback');
    car_types_insert('SUV');
    car_types_insert('MPV');
    car_types_insert('CUV');
    car_types_insert('VAN');
    car_types_insert('TRUCK/PICKUP');
    car_types_insert('Limousine');

    car_brands_insert('Toyota');
    car_brands_insert('Ford');
    car_brands_insert('Honda');
    car_brands_insert('Alfa Romeo');
    car_brands_insert('Volvo');
    car_brands_insert('VW/Volkswagen');
    car_brands_insert('Peugeot');
    car_brands_insert('Audi');
    car_brands_insert('BMW');
    car_brands_insert('Citroen');

    car_models_insert('Auris', 1);
    car_models_insert('Yaris', 1);
    car_models_insert('Corolla', 1);
    car_models_insert('Focus', 2);
    car_models_insert('Fiesta', 2);
    car_models_insert('Taurus', 2);
    car_models_insert('Accord', 3);
    car_models_insert('Civic', 3);
    car_models_insert('CR-V', 3);
    car_models_insert('Giulietta 5 gen', 4);
    car_models_insert('4C Spider 1 gen', 4);
    car_models_insert('AR-146', 4);
    car_models_insert('XC60', 5);
    car_models_insert('S60', 5);
    car_models_insert('V40', 5);
    car_models_insert('Golf 3', 6);
    car_models_insert('Golf 4', 6);
    car_models_insert('Golf 5', 6);
    car_models_insert('207', 7);
    car_models_insert('307', 7);
    car_models_insert('407', 7);
    car_models_insert('A3', 8);
    car_models_insert('A6', 8);
    car_models_insert('A8', 8);
    car_models_insert('E30 M3', 9);
    car_models_insert('i8', 9);
    car_models_insert('X1', 9);
    car_models_insert('C5', 10);
    car_models_insert('C4', 10);
    car_models_insert('C3', 10);

    cars_insert(3, 'Toyota', 1, to_date('06/05/2008', 'dd/mm/yyyy'), 'metalic', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Toyota', 2, to_date('21/01/2009', 'dd/mm/yyyy'), 'black', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Toyota', 3, to_date('26/04/2003', 'dd/mm/yyyy'), 'white', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(2, 'Ford', 4, to_date('01/06/2005', 'dd/mm/yyyy'), 'silver', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Ford', 5, to_date('02/02/2001', 'dd/mm/yyyy'), 'white', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(4, 'Ford', 6, to_date('26/04/2003', 'dd/mm/yyyy'), 'royal blue', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'Honda', 7, to_date('15/09/2004', 'dd/mm/yyyy'), 'gray mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Honda', 8, to_date('06/09/2011', 'dd/mm/yyyy'), 'dark mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(4, 'Honda', 9, to_date('17/07/2008', 'dd/mm/yyyy'), 'red', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'Alfa Romeo', 10, to_date('04/10/2011', 'dd/mm/yyyy'), 'light gray mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Alfa Romeo', 11, to_date('29/11/2014', 'dd/mm/yyyy'), 'red mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Alfa Romeo', 12, to_date('11/08/2008', 'dd/mm/yyyy'), 'black metalic', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(4, 'Volvo', 13, to_date('09/10/2020', 'dd/mm/yyyy'), 'royal blue mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'Volvo', 14, to_date('07/07/2016', 'dd/mm/yyyy'), 'white', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Volvo', 15, to_date('09/09/2015', 'dd/mm/yyyy'), 'light blue metalic', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'VW', 16, to_date('23/10/1994', 'dd/mm/yyyy'), 'black', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'VW', 17, to_date('01/09/2005', 'dd/mm/yyyy'), 'gray', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'VW', 18, to_date('09/09/2004', 'dd/mm/yyyy'), 'dark blue mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Peugeot', 19, to_date('23/05/2008', 'dd/mm/yyyy'), 'black', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Peugeot', 20, to_date('30/09/2005', 'dd/mm/yyyy'), 'gray mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Peugeot', 21, to_date('17/01/2006', 'dd/mm/yyyy'), 'blue', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Audi', 22, to_date('23/02/2007', 'dd/mm/yyyy'), 'black', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'Audi', 23, to_date('30/05/2004', 'dd/mm/yyyy'), 'gray mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'Audi', 24, to_date('17/01/2010', 'dd/mm/yyyy'), 'dark blue', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'BMW', 25, to_date('23/02/2012', 'dd/mm/yyyy'), 'black', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'BMW', 26, to_date('30/05/2013', 'dd/mm/yyyy'), 'gray mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'BMW', 27, to_date('17/01/2017', 'dd/mm/yyyy'), 'dark blue', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(3, 'Citroen', 28, to_date('23/02/2016', 'dd/mm/yyyy'), 'black', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(4, 'Citroen', 29, to_date('30/05/2003', 'dd/mm/yyyy'), 'gray mate', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));
    cars_insert(1, 'Citroen', 30, to_date('17/01/2012', 'dd/mm/yyyy'), 'dark blue', round(dbms_random.value(50000, 300000), 2), round(dbms_random.value(10, 99), 2));

    rents_insert(1, 30, 4, to_date('23/02/2022', 'dd/mm/yyyy'), floor(dbms_random.value(7, 31)));
    rents_insert(2, 8, 2, to_date('30/01/2022', 'dd/mm/yyyy'), 31);
    rents_insert(3, 11, 3, to_date('15/02/2022', 'dd/mm/yyyy'), 15);
    rents_insert(4, 16, 5, to_date('05/03/2022', 'dd/mm/yyyy'), 21);
    rents_insert(5, 4, 5, to_date('01/04/2022', 'dd/mm/yyyy'), 6);
    rents_insert(6, 1, 6, to_date('28/02/2022', 'dd/mm/yyyy'), 7);
    rents_insert(7, 21, 1, to_date('27/02/2022', 'dd/mm/yyyy'), 3);
END;