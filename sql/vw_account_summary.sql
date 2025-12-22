CREATE VIEW vw_account_summary AS
SELECT
    a.account_id,
    a.account_name,
    a.signup_date,
    a.plan_tier,
    a.industry,
    a.country,
    a.seats,
    a.is_trial,
    a.referral_source,
    a.churn_flag,
    COUNT(s.subscription_id) AS subscription_count,
    MAX(s.mrr_amount) AS latest_mrr,
    MAX(s.arr_amount) AS latest_arr
FROM accounts a
LEFT JOIN subscriptions s ON a.account_id = s.account_id
GROUP BY
    a.account_id, a.account_name, a.signup_date,
    a.plan_tier, a.industry, a.country,
    a.seats, a.is_trial, a.referral_source, a.churn_flag;
