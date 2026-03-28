USE DATABASE STREAMLIT_DEMO;
USE SCHEMA RAW;
USE WAREHOUSE COMPUTE_WH; 
USE ROLE "ACCOUNTADMIN";

CREATE OR REPLACE TABLE RAW_RETAIL_SALES (
  ORDER_ID        VARCHAR,
  ORDER_DATE      DATE,
  CUSTOMER_ID     VARCHAR,
  CUSTOMER_NAME   VARCHAR,
  CUSTOMER_CITY   VARCHAR,
  CUSTOMER_COUNTRY VARCHAR,
  PRODUCT_ID      VARCHAR,
  PRODUCT_NAME    VARCHAR,
  CATEGORY        VARCHAR,
  UNIT_PRICE      NUMBER(10,2),
  QUANTITY        INT,
  DISCOUNT_PCT    NUMBER(5,2),
  TOTAL_AMOUNT    NUMBER(10,2),
  SALESPERSON_ID  VARCHAR,
  SALESPERSON_NAME VARCHAR,
  REGION          VARCHAR
);


INSERT INTO RAW_RETAIL_SALES VALUES
('ORD-001', '2024-01-05', 'CUST-101', 'Alice Johnson',    'Auckland',   'NZ', 'PROD-A1', 'Laptop Pro',      'Electronics', 1200.00, 1, 0.05, 1140.00, 'EMP-01', 'James Smith',  'APAC'),
('ORD-002', '2024-01-07', 'CUST-102', 'Bob Martinez',     'Sydney',     'AU', 'PROD-B2', 'Office Chair',    'Furniture',   250.00,  2, 0.00, 500.00,  'EMP-02', 'Sara Lee',     'APAC'),
('ORD-003', '2024-01-10', 'CUST-103', 'Carol White',      'London',     'UK', 'PROD-A1', 'Laptop Pro',      'Electronics', 1200.00, 1, 0.10, 1080.00, 'EMP-03', 'Tom Brown',    'EMEA'),
('ORD-004', '2024-01-12', 'CUST-104', 'David Kim',        'Seoul',      'KR', 'PROD-C3', 'Wireless Mouse',  'Electronics', 45.00,   3, 0.00, 135.00,  'EMP-01', 'James Smith',  'APAC'),
('ORD-005', '2024-01-15', 'CUST-101', 'Alice Johnson',    'Auckland',   'NZ', 'PROD-D4', 'Standing Desk',   'Furniture',   600.00,  1, 0.05, 570.00,  'EMP-02', 'Sara Lee',     'APAC'),
('ORD-006', '2024-02-01', 'CUST-105', 'Eva Patel',        'Mumbai',     'IN', 'PROD-E5', 'Monitor 27"',     'Electronics', 400.00,  2, 0.00, 800.00,  'EMP-03', 'Tom Brown',    'APAC'),
('ORD-007', '2024-02-03', 'CUST-106', 'Frank Nguyen',     'Paris',      'FR', 'PROD-B2', 'Office Chair',    'Furniture',   250.00,  4, 0.10, 900.00,  'EMP-04', 'Nina Rossi',   'EMEA'),
('ORD-008', '2024-02-08', 'CUST-107', 'Grace Chen',       'Shanghai',   'CN', 'PROD-C3', 'Wireless Mouse',  'Electronics', 45.00,   5, 0.05, 213.75,  'EMP-01', 'James Smith',  'APAC'),
('ORD-009', '2024-02-14', 'CUST-108', 'Hiro Tanaka',      'Tokyo',      'JP', 'PROD-A1', 'Laptop Pro',      'Electronics', 1200.00, 2, 0.15, 2040.00, 'EMP-02', 'Sara Lee',     'APAC'),
('ORD-010', '2024-02-20', 'CUST-109', 'Isla Murphy',      'Dublin',     'IE', 'PROD-F6', 'Keyboard Mech',   'Electronics', 150.00,  1, 0.00, 150.00,  'EMP-04', 'Nina Rossi',   'EMEA'),
('ORD-011', '2024-03-01', 'CUST-110', 'Jake Wilson',      'New York',   'US', 'PROD-D4', 'Standing Desk',   'Furniture',   600.00,  1, 0.00, 600.00,  'EMP-05', 'Amy Clark',    'AMER'),
('ORD-012', '2024-03-05', 'CUST-111', 'Karen Davis',      'Chicago',    'US', 'PROD-E5', 'Monitor 27"',     'Electronics', 400.00,  1, 0.05, 380.00,  'EMP-05', 'Amy Clark',    'AMER');



SELECT * 
FROM RAW_RETAIL_SALES; 
