# Supplier Risk Monitoring - SQL Portfolio Project

## Note
This project demonstrates the use of SQL to identify operational risks in supplier performance. It is for information purposes in support of the project portfolio of Clive Machingaifa. To maintain confidentiality, certain details & code have been omitted or altered.

## Objective
Monitor supplier delivery and quality performance to detect potential risks early.

## Database Structure
- **Suppliers**: List of suppliers.
- **Deliveries**: Records of deliveries made by suppliers.
- **Quality Checks**: Results of quality inspections on deliveries.

## Key Risk Indicators
- Late deliveries
- Under-deliveries (delivered less than ordered)
- Failed quality checks

## Risk Scoring
Each supplier receives a risk score based on:
- 40% weight: Number of late deliveries
- 30% weight: Number of under-deliveries
- 30% weight: Number of failed quality checks

Suppliers with higher risk scores are prioritized for operational review.

## Files
- `create_tables.sql` - Script to create database tables
- `insert_sample_data.sql` - Script to populate tables with sample data
- `supplier_risk_query.sql` - SQL query to calculate and rank supplier risk

---
