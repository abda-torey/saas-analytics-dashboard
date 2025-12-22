CREATE VIEW vw_subscription_summary AS
SELECT
    s.subscription_id,
    s.account_id,
    s.start_date,
    s.end_date,
    s.plan_tier,
    s.seats,
    s.mrr_amount,
    s.arr_amount,
    s.billing_frequency,
    s.is_trial,
    s.upgrade_flag,
    s.downgrade_flag,
    s.churn_flag,
    s.auto_renew_flag
FROM subscriptions s;
