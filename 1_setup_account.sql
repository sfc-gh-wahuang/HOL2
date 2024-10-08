USE ROLE USERADMIN;
CREATE ROLE HOL2;
GRANT ROLE HOL2 TO USER WHUANG;
USE ROLE SYSADMIN;
CREATE OR REPLACE WAREHOUSE HOL2_WH WAREHOUSE_SIZE=XSMALL INITIALLY_SUSPENDED=TRUE;
GRANT USAGE ON WAREHOUSE HOL2_WH TO ROLE HOL2;
CREATE DATABASE IF NOT EXISTS HOL2_DB;
GRANT OWNERSHIP ON DATABASE HOL2_DB TO ROLE HOL2;

USE ROLE HOL2;
USE WAREHOUSE HOL2_WH;
CREATE SCHEMA IF NOT EXISTS HOL2_DB.HOL2_SCHEMA;
CREATE STAGE RAW_DATA DIRECTORY = (ENABLE = TRUE);
CREATE STAGE SEMANTIC_MODEL DIRECTORY = (ENABLE = TRUE);