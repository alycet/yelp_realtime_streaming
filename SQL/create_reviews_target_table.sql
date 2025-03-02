CREATE OR REPLACE TABLE PROD.yelp_customer_reviews(
    review_id VARCHAR(),
    user_id VARCHAR(),
    business_id VARCHAR(),
    stars FLOAT,
    text VARCHAR(),
    feedback VARCHAR(),
    review_date DATETIME
)
