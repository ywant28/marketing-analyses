-- Data imported via MySQL Workbench Import Wizard
LOAD DATA INFILE 'data/performance.csv' INTO TABLE performance;

-- Fix data types after import
ALTER TABLE product MODIFY product_id VARCHAR(20);
ALTER TABLE platform MODIFY channel_id VARCHAR(20);
ALTER TABLE performance MODIFY product_id VARCHAR(20);
ALTER TABLE performance MODIFY channel_id VARCHAR(20);

-- Add date column
ALTER TABLE performance ADD COLUMN date DATE;