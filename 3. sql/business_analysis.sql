-- SQL Queries for Business Logic Workflow:

USE consumer_behaviour;
SELECT * 
FROM consumer_data
LIMIT 5;

/* =====================================================
   DATA OVERVIEW & BASELINE METRICS
===================================================== */

-- 1. Total transactions, customers, revenue
SELECT 
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(purchase_amount) AS total_revenue,
    AVG(purchase_amount) AS avg_order_value
FROM consumer_data;


/* =====================================================
   DEMOGRAPHIC & CUSTOMER SEGMENTATION
===================================================== */

-- 2. Revenue by gender
SELECT
    gender,
    SUM(purchase_amount) AS total_revenue
FROM consumer_data
GROUP BY gender;


-- 3. Revenue Contribution by age_group
SELECT
    age_group,
    SUM(purchase_amount) AS revenue
FROM consumer_data
GROUP BY age_group
ORDER BY revenue DESC;


-- 4. Customer segmentation (New / Returning / Loyal)
SELECT
    CASE
        WHEN previous_purchases = 1 THEN 'New'
        WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
        ELSE 'Loyal'
    END AS customer_segment,
    COUNT(DISTINCT customer_id) AS customers
FROM consumer_data
GROUP BY customer_segment;


/* =====================================================
   PRODUCT & CATEGORY PERFORMANCE
===================================================== */

-- 5. Category-wise revenue
SELECT
    category,
    SUM(purchase_amount) AS revenue
FROM consumer_data
GROUP BY category
ORDER BY revenue DESC; 


-- 6. Top 3 most purchased products in each category
SELECT *
FROM (
    SELECT
        category,
        item_purchased,
        COUNT(*) AS purchase_count,
        RANK() OVER (
            PARTITION BY category
            ORDER BY COUNT(*) DESC
        ) AS rank_in_category
    FROM consumer_data
    GROUP BY category, item_purchased
) t
WHERE rank_in_category <= 3;


-- 7. Top 5 products by average review rating
SELECT
    item_purchased,
    AVG(review_rating) AS avg_rating
FROM consumer_data
GROUP BY item_purchased
HAVING COUNT(review_rating) >= 10
ORDER BY avg_rating DESC
LIMIT 5;


/* =====================================================
   PROMOTION & DISCOUNT EFFECTIVENESS
===================================================== */

-- 8. Customers who used discount but spent more than average
SELECT DISTINCT customer_id
FROM consumer_data
WHERE promotion_exposure_flag = 1
AND purchase_amount >
    (SELECT AVG(purchase_amount) FROM consumer_data);


-- 9. Products with highest % of discounted purchases
SELECT
    item_purchased,
    COUNT(CASE WHEN promotion_exposure_flag = 1 THEN 1 END) * 100.0 /
    COUNT(*) AS discount_usage_pct
FROM consumer_data
GROUP BY item_purchased
ORDER BY discount_usage_pct DESC
LIMIT 5;


/* =====================================================
   SHIPPING & PAYMENT ANALYSIS
===================================================== */

-- 10. Average purchase amount by shipping type
SELECT
    shipping_type,
    AVG(purchase_amount) AS avg_spend
FROM consumer_data
GROUP BY shipping_type;


-- 11. Standard vs Express comparison
SELECT
    express_shipping_flag,
    AVG(purchase_amount) AS avg_purchase
FROM consumer_data
GROUP BY express_shipping_flag;

-- 12. Payment method preference
SELECT
    payment_method,
    COUNT(*) AS transactions
FROM consumer_data
GROUP BY payment_method
ORDER BY transactions DESC;


/* =====================================================
   SUBSCRIPTION & ENGAGEMENT ANALYSIS
===================================================== */

-- 13. Do subscribed customers spend more?
SELECT
    subscription_status,
    AVG(purchase_amount) AS avg_spend,
    SUM(purchase_amount) AS total_revenue
FROM consumer_data
GROUP BY subscription_status;


-- 14. Are repeat buyers more likely to subscribe?
SELECT
    CASE 
        WHEN previous_purchases > 5 THEN 'Repeat Buyer'
        ELSE 'Low Frequency Buyer'
    END AS buyer_type,
    subscription_status,
    COUNT(DISTINCT customer_id) AS customers
FROM consumer_data
GROUP BY buyer_type, subscription_status;


/* =====================================================
   SEASONAL DEMAND ANALYSIS
===================================================== */

-- 15. Revenue by season
SELECT
    season,
    SUM(purchase_amount) AS seasonal_revenue
FROM consumer_data
GROUP BY season
ORDER BY seasonal_revenue DESC;


-- 16. Category-wise seasonal demand
SELECT
    season,
    category,
    SUM(purchase_amount) AS revenue
FROM consumer_data
GROUP BY season, category;
