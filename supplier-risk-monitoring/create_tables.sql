-- Create tables for Supplier Risk Monitoring

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    supplier_name TEXT NOT NULL
);

CREATE TABLE deliveries (
    delivery_id SERIAL PRIMARY KEY,
    supplier_id INT REFERENCES suppliers(supplier_id),
    delivery_date DATE,
    expected_delivery_date DATE,
    items_ordered INT,
    items_delivered INT
);

CREATE TABLE quality_checks (
    qc_id SERIAL PRIMARY KEY,
    delivery_id INT REFERENCES deliveries(delivery_id),
    passed_quality_check CHAR(1) CHECK (passed_quality_check IN ('Y', 'N'))
);
