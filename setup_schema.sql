CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name        VARCHAR2(100), 
    region      VARCHAR2(50),
    join_date   DATE
);

CREATE TABLE products (
    product_id   NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category     VARCHAR2(50),
    price        NUMBER(10, 2) CHECK (price >= 0)
);

CREATE TABLE orders (
    order_id    NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    product_id  NUMBER NOT NULL,
    order_date  DATE,
    quantity    NUMBER CHECK (quantity > 0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id)  REFERENCES products(product_id)
);

BEGIN
    FOR i IN 1..100 LOOP
        INSERT INTO customers (
            customer_id,
            name,
            region,
            join_date
        )
        VALUES (
            i,
            'Customer ' || i,
            CASE MOD(i, 4)
                WHEN 0 THEN 'North'
                WHEN 1 THEN 'South'
                WHEN 2 THEN 'East'
                ELSE 'West'
            END,
            DATE '2024-01-01' + TRUNC(DBMS_RANDOM.VALUE(0, 730))
        );
    END LOOP;
    COMMIT;
END;
/

UPDATE customers SET name = 'Olivia Smith'        WHERE customer_id = 1;
UPDATE customers SET name = 'Liam Johnson'        WHERE customer_id = 2;
UPDATE customers SET name = 'Emma Williams'       WHERE customer_id = 3;
UPDATE customers SET name = 'Noah Brown'          WHERE customer_id = 4;
UPDATE customers SET name = 'Ava Jones'           WHERE customer_id = 5;
UPDATE customers SET name = 'Elijah Garcia'       WHERE customer_id = 6;
UPDATE customers SET name = 'Sophia Miller'       WHERE customer_id = 7;
UPDATE customers SET name = 'William Davis'       WHERE customer_id = 8;
UPDATE customers SET name = 'Isabella Rodriguez'  WHERE customer_id = 9;
UPDATE customers SET name = 'James Martinez'      WHERE customer_id = 10;
UPDATE customers SET name = 'Mia Hernandez'       WHERE customer_id = 11;
UPDATE customers SET name = 'Benjamin Lopez'      WHERE customer_id = 12;
UPDATE customers SET name = 'Charlotte Gonzalez'  WHERE customer_id = 13;
UPDATE customers SET name = 'Lucas Wilson'        WHERE customer_id = 14;
UPDATE customers SET name = 'Amelia Anderson'     WHERE customer_id = 15;
UPDATE customers SET name = 'Mason Thomas'        WHERE customer_id = 16;
UPDATE customers SET name = 'Harper Taylor'       WHERE customer_id = 17;
UPDATE customers SET name = 'Ethan Moore'         WHERE customer_id = 18;
UPDATE customers SET name = 'Evelyn Jackson'      WHERE customer_id = 19;
UPDATE customers SET name = 'Alexander Martin'    WHERE customer_id = 20;
UPDATE customers SET name = 'Abigail Lee'         WHERE customer_id = 21;
UPDATE customers SET name = 'Michael Perez'       WHERE customer_id = 22;
UPDATE customers SET name = 'Emily Thompson'      WHERE customer_id = 23;
UPDATE customers SET name = 'Daniel White'        WHERE customer_id = 24;
UPDATE customers SET name = 'Ella Harris'         WHERE customer_id = 25;
UPDATE customers SET name = 'Matthew Sanchez'     WHERE customer_id = 26;
UPDATE customers SET name = 'Avery Clark'         WHERE customer_id = 27;
UPDATE customers SET name = 'Henry Ramirez'       WHERE customer_id = 28;
UPDATE customers SET name = 'Sofia Lewis'         WHERE customer_id = 29;
UPDATE customers SET name = 'Jackson Robinson'    WHERE customer_id = 30;
UPDATE customers SET name = 'Scarlett Walker'     WHERE customer_id = 31;
UPDATE customers SET name = 'Sebastian Young'     WHERE customer_id = 32;
UPDATE customers SET name = 'Victoria Allen'      WHERE customer_id = 33;
UPDATE customers SET name = 'Aiden King'          WHERE customer_id = 34;
UPDATE customers SET name = 'Grace Wright'        WHERE customer_id = 35;
UPDATE customers SET name = 'Owen Scott'          WHERE customer_id = 36;
UPDATE customers SET name = 'Chloe Torres'        WHERE customer_id = 37;
UPDATE customers SET name = 'Jack Nguyen'         WHERE customer_id = 38;
UPDATE customers SET name = 'Lily Hill'           WHERE customer_id = 39;
UPDATE customers SET name = 'Luke Flores'         WHERE customer_id = 40;
UPDATE customers SET name = 'Hannah Green'        WHERE customer_id = 41;
UPDATE customers SET name = 'Wyatt Adams'         WHERE customer_id = 42;
UPDATE customers SET name = 'Zoey Baker'          WHERE customer_id = 43;
UPDATE customers SET name = 'Carter Nelson'       WHERE customer_id = 44;
UPDATE customers SET name = 'Nora Carter'         WHERE customer_id = 45;
UPDATE customers SET name = 'Julian Mitchell'     WHERE customer_id = 46;
UPDATE customers SET name = 'Riley Perez'         WHERE customer_id = 47;
UPDATE customers SET name = 'Levi Roberts'        WHERE customer_id = 48;
UPDATE customers SET name = 'Aria Turner'         WHERE customer_id = 49;
UPDATE customers SET name = 'Daniel Phillips'     WHERE customer_id = 50;
UPDATE customers SET name = 'Luna Campbell'       WHERE customer_id = 51;
UPDATE customers SET name = 'Gabriel Parker'      WHERE customer_id = 52;
UPDATE customers SET name = 'Hazel Evans'         WHERE customer_id = 53;
UPDATE customers SET name = 'Isaac Edwards'       WHERE customer_id = 54;
UPDATE customers SET name = 'Ellie Collins'       WHERE customer_id = 55;
UPDATE customers SET name = 'David Stewart'       WHERE customer_id = 56;
UPDATE customers SET name = 'Audrey Sanchez'      WHERE customer_id = 57;
UPDATE customers SET name = 'Joseph Morris'       WHERE customer_id = 58;
UPDATE customers SET name = 'Brooklyn Rogers'     WHERE customer_id = 59;
UPDATE customers SET name = 'Samuel Reed'         WHERE customer_id = 60;
UPDATE customers SET name = 'Bella Cook'          WHERE customer_id = 61;
UPDATE customers SET name = 'Anthony Morgan'      WHERE customer_id = 62;
UPDATE customers SET name = 'Claire Bell'         WHERE customer_id = 63;
UPDATE customers SET name = 'Andrew Murphy'       WHERE customer_id = 64;
UPDATE customers SET name = 'Stella Bailey'       WHERE customer_id = 65;
UPDATE customers SET name = 'Joshua Rivera'       WHERE customer_id = 66;
UPDATE customers SET name = 'Violet Cooper'       WHERE customer_id = 67;
UPDATE customers SET name = 'Christian Richardson' WHERE customer_id = 68;
UPDATE customers SET name = 'Aurora Cox'          WHERE customer_id = 69;
UPDATE customers SET name = 'Jonathan Howard'     WHERE customer_id = 70;
UPDATE customers SET name = 'Savannah Ward'       WHERE customer_id = 71;
UPDATE customers SET name = 'Lincoln Torres'      WHERE customer_id = 72;
UPDATE customers SET name = 'Penelope Peterson'   WHERE customer_id = 73;
UPDATE customers SET name = 'Nathan Gray'         WHERE customer_id = 74;
UPDATE customers SET name = 'Claire James'        WHERE customer_id = 75;
UPDATE customers SET name = 'Ryan Watson'         WHERE customer_id = 76;
UPDATE customers SET name = 'Madelyn Brooks'      WHERE customer_id = 77;
UPDATE customers SET name = 'Eli Kelly'           WHERE customer_id = 78;
UPDATE customers SET name = 'Peyton Sanders'      WHERE customer_id = 79;
UPDATE customers SET name = 'Aaron Price'         WHERE customer_id = 80;
UPDATE customers SET name = 'Lydia Bennett'       WHERE customer_id = 81;
UPDATE customers SET name = 'Charles Wood'        WHERE customer_id = 82;
UPDATE customers SET name = 'Savanna Barnes'      WHERE customer_id = 83;
UPDATE customers SET name = 'Cameron Ross'        WHERE customer_id = 84;
UPDATE customers SET name = 'Emilia Henderson'    WHERE customer_id = 85;
UPDATE customers SET name = 'Ezekiel Coleman'     WHERE customer_id = 86;
UPDATE customers SET name = 'Naomi Jenkins'       WHERE customer_id = 87;
UPDATE customers SET name = 'Thomas Perry'        WHERE customer_id = 88;
UPDATE customers SET name = 'Ruby Powell'         WHERE customer_id = 89;
UPDATE customers SET name = 'Hudson Long'         WHERE customer_id = 90;
UPDATE customers SET name = 'Elena Patterson'     WHERE customer_id = 91;
UPDATE customers SET name = 'Connor Hughes'       WHERE customer_id = 92;
UPDATE customers SET name = 'Savannah Flores'     WHERE customer_id = 93;
UPDATE customers SET name = 'Dominic Washington'  WHERE customer_id = 94;
UPDATE customers SET name = 'Alice Butler'        WHERE customer_id = 95;
UPDATE customers SET name = 'Leo Simmons'         WHERE customer_id = 96;
UPDATE customers SET name = 'Aurora Foster'       WHERE customer_id = 97;
UPDATE customers SET name = 'Julian Gonzales'     WHERE customer_id = 98;
UPDATE customers SET name = 'Stella Bryant'       WHERE customer_id = 99;
UPDATE customers SET name = 'Evan Alexander'      WHERE customer_id = 100;
COMMIT;

INSERT ALL
    INTO products (product_id, product_name, category, price) VALUES (1, 'Laptop', 'Electronics', 1200)
    INTO products (product_id, product_name, category, price) VALUES (2, 'Headphones', 'Accessories', 150)
    INTO products (product_id, product_name, category, price) VALUES (3, 'Smartphone', 'Electronics', 800)
    INTO products (product_id, product_name, category, price) VALUES (4, 'Keyboard', 'Accessories', 50)
    INTO products (product_id, product_name, category, price) VALUES (5, 'Monitor', 'Electronics', 300)
    INTO products (product_id, product_name, category, price) VALUES (6, 'Mouse', 'Accessories', 25)
    INTO products (product_id, product_name, category, price) VALUES (7, 'Printer', 'Electronics', 200)
    INTO products (product_id, product_name, category, price) VALUES (8, 'Webcam', 'Accessories', 75)
    INTO products (product_id, product_name, category, price) VALUES (9, 'Router', 'Electronics', 120)
    INTO products (product_id, product_name, category, price) VALUES (10, 'USB Drive', 'Accessories', 20)
    INTO products (product_id, product_name, category, price) VALUES (11, 'Tablet', 'Electronics', 450)
    INTO products (product_id, product_name, category, price) VALUES (12, 'Charger', 'Accessories', 35)
    INTO products (product_id, product_name, category, price) VALUES (13, 'Smartwatch', 'Electronics', 250)
    INTO products (product_id, product_name, category, price) VALUES (14, 'Earbuds', 'Accessories', 60)
    INTO products (product_id, product_name, category, price) VALUES (15, 'Camera', 'Electronics', 700)
    INTO products (product_id, product_name, category, price) VALUES (16, 'Tripod', 'Accessories', 80)
    INTO products (product_id, product_name, category, price) VALUES (17, 'Speaker', 'Electronics', 150)
    INTO products (product_id, product_name, category, price) VALUES (18, 'Memory Card', 'Accessories', 40)
    INTO products (product_id, product_name, category, price) VALUES (19, 'External Hard Drive', 'Electronics', 120)
    INTO products (product_id, product_name, category, price) VALUES (20, 'Laptop Bag', 'Accessories', 70)
    INTO products (product_id, product_name, category, price) VALUES (21, 'Projector', 'Electronics', 500)
    INTO products (product_id, product_name, category, price) VALUES (22, 'HDMI Cable', 'Accessories', 15)
    INTO products (product_id, product_name, category, price) VALUES (23, 'Gaming Console', 'Electronics', 400)
    INTO products (product_id, product_name, category, price) VALUES (24, 'Controller', 'Accessories', 60)
    INTO products (product_id, product_name, category, price) VALUES (25, 'VR Headset', 'Electronics', 600)
    INTO products (product_id, product_name, category, price) VALUES (26, 'Charging Dock', 'Accessories', 50)
    INTO products (product_id, product_name, category, price) VALUES (27, 'Smart TV', 'Electronics', 900)
    INTO products (product_id, product_name, category, price) VALUES (28, 'Remote Control', 'Accessories', 25)
    INTO products (product_id, product_name, category, price) VALUES (29, 'Bluetooth Adapter', 'Electronics', 40)
    INTO products (product_id, product_name, category, price) VALUES (30, 'Screen Protector', 'Accessories', 10)
    INTO products (product_id, product_name, category, price) VALUES (31, 'Desktop PC', 'Electronics', 1200)
    INTO products (product_id, product_name, category, price) VALUES (32, 'Graphic Tablet', 'Accessories', 250)
    INTO products (product_id, product_name, category, price) VALUES (33, 'Smart Doorbell', 'Electronics', 180)
    INTO products (product_id, product_name, category, price) VALUES (34, 'Power Bank', 'Accessories', 40)
    INTO products (product_id, product_name, category, price) VALUES (35, 'LED Lamp', 'Home', 35)
    INTO products (product_id, product_name, category, price) VALUES (36, 'Blender', 'Home', 60)
    INTO products (product_id, product_name, category, price) VALUES (37, 'Coffee Maker', 'Home', 80)
    INTO products (product_id, product_name, category, price) VALUES (38, 'Toaster', 'Home', 30)
    INTO products (product_id, product_name, category, price) VALUES (39, 'Air Fryer', 'Home', 100)
    INTO products (product_id, product_name, category, price) VALUES (40, 'Vacuum Cleaner', 'Home', 150)
    INTO products (product_id, product_name, category, price) VALUES (41, 'Electric Kettle', 'Home', 45)
    INTO products (product_id, product_name, category, price) VALUES (42, 'Hair Dryer', 'Home', 40)
    INTO products (product_id, product_name, category, price) VALUES (43, 'Microwave', 'Home', 200)
    INTO products (product_id, product_name, category, price) VALUES (44, 'Iron', 'Home', 35)
    INTO products (product_id, product_name, category, price) VALUES (45, 'Fan', 'Home', 25)
    INTO products (product_id, product_name, category, price) VALUES (46, 'Air Conditioner', 'Home', 600)
    INTO products (product_id, product_name, category, price) VALUES (47, 'Refrigerator', 'Home', 900)
    INTO products (product_id, product_name, category, price) VALUES (48, 'Dishwasher', 'Home', 750)
    INTO products (product_id, product_name, category, price) VALUES (49, 'Washing Machine', 'Home', 650)
    INTO products (product_id, product_name, category, price) VALUES (50, 'Dryer', 'Home', 550)
SELECT * FROM dual;
COMMIT;

BEGIN
    FOR i IN 1..2000 LOOP
        INSERT INTO orders (
            order_id,
            customer_id,
            product_id,
            order_date,
            quantity
        )
        VALUES (
            1000 + i,
            TRUNC(DBMS_RANDOM.VALUE(1, 101)),
            TRUNC(DBMS_RANDOM.VALUE(1, 51)),
            DATE '2024-01-01' + TRUNC(DBMS_RANDOM.VALUE(0, 730)),
            TRUNC(DBMS_RANDOM.VALUE(1, 11))
        );
    END LOOP;
    COMMIT;
END;
/