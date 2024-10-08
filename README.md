# HOL2 Demo: Cortex Analyst

This project is an identical replication from [cortex analyst quick start](https://quickstarts.snowflake.com/guide/getting_started_with_cortex_analyst/index.html#0)

**If you choose to follow the steps to set things up, please make sure to use your own account instead of CAS1 or CAS2 to avoid modifying each other's objects.**

## Execution Instructions

1. **Run SQL Scripts**  
   - Run [1_setup_account.sql](1_setup_account.sql) and [2_setup_data.sql](sql/2_setup_data.sql) to set up the database and load data. You can run these either via your IDE's Snowflake add-on or in Snowsight.

3. **Run Cortex analyst**
    Upload [the yaml file](hol2_semantic_model_v1.yaml) onto stage @HOL2_DB.HOL2_SCHEMA.SEMANTIC_MODEL

    Follow these steps to deploy and run the Streamlit app in Snowsight:

    1. Navigate to Snowsight > Projects > Streamlit, and create a new app.
    2. Copy and paste the contents of `cortex_analyst_sis_demo_app.py` into the new app.

3. **Cleanup**  
   Drop the HOL2 DB

