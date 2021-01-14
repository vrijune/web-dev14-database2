-- Your SQL for question 1


DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS work;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees
(
    fname       VARCHAR(50) not null,
    lname       VARCHAR(50) not null,
#     description VARCHAR(50) not null,
    age         INT         not null,
    employee_id INT         NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (employee_id)


);

CREATE TABLE departments
(
    depart_name VARCHAR(50) not null,
#     description VARCHAR(50) not null,
    manager_id  INT,
    depart_id   INT         NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (depart_id),
    foreign key (manager_id) references employees (employee_id)
);



CREATE TABLE vehicles
(
    license       VARCHAR(50) not null,
    types         VARCHAR(50) not null,
    year          int(4)      not null,
    department_id INT         NOT NULL,
    vehicle_id    INT         NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (vehicle_id),
    FOREIGN KEY (department_id) REFERENCES departments (depart_id)
);

CREATE TABLE work
(
    employee_id INT         not null,
    depart_id   INT         not null,
    role        VARCHAR(50) not null,
    PRIMARY KEY (employee_id, depart_id),
    FOREIGN KEY (employee_id) references employees (employee_id),
    FOREIGN KEY (depart_id) references departments (depart_id)


);

INSERT INTO employees(fname, lname, age)
VALUES ('aa', 'Jan', 21),
       ('bb', 'Feb', 61),
       ('cc', 'Mar', 51),
       ('dd', 'April', 28),
       ('ee', 'May', 21),
       ('ff', 'June', 67),
       ('hh', 'July', 45),
       ('jj', 'Aug', 33),
       ('kk', 'Sept', 55),
       ('ii', 'Oct', 96);



INSERT INTO departments(depart_name, manager_id)
VALUES ('landscaping', 1),
       ('residential', 5),
       ('commercial', 9),
       ('marketing', 10);



INSERT INTO vehicles(license, types, year, department_id)
VALUES ('license1', 'type1', 1995, 1),
       ('license2', 'type2', 1996, 2),
       ('license3', 'type3', 1997, 1),
       ('license4', 'type4', 1998, 2),
       ('license5', 'type5', 1999, 1),
       ('license6', 'type6', 2000, 2),
       ('license7', 'type7', 2001, 3);



INSERT INTO work(EMPLOYEE_ID, DEPART_ID, ROLE)
VALUES (1, 1, 'manager'),
       (1, 2, 'employee'),
       (3, 3, 'employee'),
       (4, 3, 'employee'),
       (5, 2, 'manager'),
       (6, 2, 'employee'),
       (7, 1, 'employee'),
       (8, 2, 'employee'),
       (9, 3, 'manager'),
       (10, 4, 'manager');



SELECT employee_id
from work
GROUP BY employee_id
HAVING COUNT(depart_id) = 1;



SELECT employee_id
FROM employees
WHERE age < 30;



















