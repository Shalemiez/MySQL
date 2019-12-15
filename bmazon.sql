DROP DATABASE IF EXISTS bamazon
;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products
(
    item_id INTEGER
    AUTO_INCREMENT NOT NULL,
    product_name VARCHAR
    (50) NOT NULL,
    department_name VARCHAR
    (30) NOT NULL, 
    price INTEGER NOT NULL,
    stock_quantity INTEGER NOT NULL,
    PRIMARY KEY
    (item_id, product_name)
);

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('PS4','GAMING',299,4
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('XBOX ONE','GAMING',199,5
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Nintendo Switch','GAMING',199,10
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('PSP','GAMING',100,4
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Aladin 4k','MOVIES',25.99,30
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Lion King 4k','MOVIES',25.99,0
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Beauty and Beast 4k','MOVIES',24.99,25
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Frozen','MOVIES',20.99,5
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Frozen 2','MOVIES',25.99,0
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('Ipad Pro 11-inch ','APPLE',799.99,10
    );

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUE('TCL 55" Roku 4K UHD HDR Smart TV','TV',299.99,20
    );
