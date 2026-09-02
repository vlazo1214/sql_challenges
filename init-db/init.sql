CREATE TABLE IF NOT EXISTS members (
    customer_id VARCHAR(1) PRIMARY KEY,
    join_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS menu (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(5),
    price INTEGER
);

CREATE TABLE IF NOT EXISTS sales (
    customer_id VARCHAR(1) NOT NULL REFERENCES members(customer_id),
    order_date DATE NOT NULL,
    product_id INTEGER NOT NULL REFERENCES menu(product_id)
);

