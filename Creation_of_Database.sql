CREATE DATABASE SCOPED CREDENTIAL SasToken
WITH IDENTITY='SHARED ACCESS SIGNATURE',
SECRET='sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupyx&se=2024-08-25T10:15:43Z&st=2024-08-25T02:15:43Z&spr=https&sig=7AK5OmKm0r2eSkV0Rus0%2Bi2loSR1ULB1wumuAWqH%2F4g%3D'

CREATE EXTERNAL DATA SOURCE log_data5
WITH (LOCATION='https://adlsprojct22.blob.core.windows.net/processed',
      CREDENTIAL= SasToken)

CREATE EXTERNAL FILE FORMAT SynapseParquetFormat1
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
);
CREATE EXTERNAL TABLE RetailTransactions4
(
    id INT,
    Timestamp DATETIME2,
    Customer_id INT,
    Product_id INT,
    Quantity INT,
    Price NVARCHAR(255),  
    Discount FLOAT,
    Payment_method NVARCHAR(255),
    Customer_age INT,
    Customer_gender NVARCHAR(500),
    Customer_location NVARCHAR(255),
    Total_amount FLOAT,
    year INT,
    month INT,
    Age_Group NVARCHAR(255)
)
WITH (
    LOCATION = '/retail_dataset_transformed/Product_Category=Clothing/part-*.parquet',  -- Update the path as necessary
    DATA_SOURCE = log_data5,
    FILE_FORMAT = SynapseParquetFormat
);

SELECT * FROM RetailTransactions4