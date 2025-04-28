-- Insert sample suppliers
INSERT INTO suppliers (supplier_name) VALUES
('Supplier A'),
('Supplier B'),
('Supplier C');

-- Insert sample deliveries
INSERT INTO deliveries (supplier_id, delivery_date, expected_delivery_date, items_ordered, items_delivered) VALUES
(1, '2025-04-01', '2025-04-01', 100, 100),
(1, '2025-04-10', '2025-04-08', 200, 190),
(2, '2025-04-02', '2025-04-02', 150, 150),
(3, '2025-04-03', '2025-04-03', 120, 100);

-- Insert sample quality checks
INSERT INTO quality_checks (delivery_id, passed_quality_check) VALUES
(1, 'Y'),
(2, 'N'),
(3, 'Y'),
(4, 'N');
