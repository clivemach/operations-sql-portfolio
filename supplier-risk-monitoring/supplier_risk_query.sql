-- Supplier Risk Scoring Query
-- Identify suppliers with delivery and quality issues

SELECT 
    s.supplier_id,
    s.supplier_name,
    COUNT(DISTINCT d.delivery_id) AS total_deliveries,
    SUM(CASE WHEN d.delivery_date > d.expected_delivery_date THEN 1 ELSE 0 END) AS late_deliveries,
    SUM(CASE WHEN d.items_delivered < d.items_ordered THEN 1 ELSE 0 END) AS under_deliveries,
    SUM(CASE WHEN qc.passed_quality_check = 'N' THEN 1 ELSE 0 END) AS failed_quality_checks,
    ( 
      (SUM(CASE WHEN d.delivery_date > d.expected_delivery_date THEN 1 ELSE 0 END) * 0.4) +
      (SUM(CASE WHEN d.items_delivered < d.items_ordered THEN 1 ELSE 0 END) * 0.3) +
      (SUM(CASE WHEN qc.passed_quality_check = 'N' THEN 1 ELSE 0 END) * 0.3)
    ) AS risk_score
FROM suppliers s
LEFT JOIN deliveries d ON s.supplier_id = d.supplier_id
LEFT JOIN quality_checks qc ON d.delivery_id = qc.delivery_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY risk_score DESC;
