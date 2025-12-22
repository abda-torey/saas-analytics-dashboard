CREATE VIEW vw_support_metrics AS
SELECT
    a.account_id,
    COUNT(t.ticket_id) AS ticket_count,
    AVG(t.resolution_time_hours) AS avg_resolution_time,
    AVG(t.first_response_time_minutes) AS avg_first_response_time,
    AVG(t.satisfaction_score) AS avg_satisfaction,
    SUM(CASE WHEN t.escalation_flag = 1 THEN 1 ELSE 0 END) AS escalated_tickets
FROM support_tickets t
JOIN accounts a ON t.account_id = a.account_id
GROUP BY a.account_id;