create or replace task tsk_scd1_cust_rev warehouse = COMPUTE_WH schedule = '1 minute'
ERROR_ON_NONDETERMINISTIC_MERGE=FALSE
as
call pdr_scd1_cust_rev();

alter task tsk_scd1_cust_rev resume;
