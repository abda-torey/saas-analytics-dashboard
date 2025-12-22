CREATE VIEW vw_churn_summary AS
SELECT
    a.account_id,
    a.plan_tier,
    c.reason_code,
    c.refund_amount_usd,
    c.churn_date,
    c.preceding_upgrade_flag,
    c.preceding_downgrade_flag,
    c.is_reactivation
FROM churn c
JOIN accounts a ON c.account_id = a.account_id;

