CREATE OR REPLACE PROCEDURE pdr_scd1_cust_rev()
returns string not null
language javascript
as
    $$
      var cmd = `
                    merge into PROD.yelp_customer_reviews c 
                    using PUBLIC.customer_reviews_yelp cr
                       on  c.review_id = cr.$2:review_id
                    when matched and c.review_id <> cr.$2:review_id or
                                     c.user_id  <> cr.$2:user_id or
                                     c.business_id <> cr.$2:business_id or
                                     c.stars <> cr.$2:stars or
                                     c.text <> cr.$2:text or
                                     c.feedback <> cr.$2:feedback or
                                     c.review_date <> cr.$2:date then update
                        set c.review_id = cr.$2:review_id
                            ,c.user_id = cr.$2:user_id 
                            ,c.business_id = cr.$2:business_id  
                            ,c.stars = cr.$2:stars      
                            ,c.text = cr.$2:text     
                            ,c.feedback = cr.$2:feedback       
                            ,c.date = cr.$2:date      
                            --,update_timestamp = current_timestamp()
                    when not matched then insert
                               (c.review_id,c.user_id,c.business_id,c.stars,c.text,c.feedback,c.date)
                        values (cr.$2:review_id,cr.$2:user_id,cr.$2:business_id,cr.$2:stars,cr.$2:text,cr.$2:feedback,cr.$2:date);
                `
      var cmd1 = "truncate table public.customer_reviews_yelp;"
      var sql = snowflake.createStatement({sqlText: cmd});
      var sql1 = snowflake.createStatement({sqlText: cmd1});
      var result = sql.execute();
      var result1 = sql1.execute();
    return cmd+'\n'+cmd1;
    $$;
