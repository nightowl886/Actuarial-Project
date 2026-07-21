SELECT PROCEDURECODE,
       COUNT(*) AS claim_count,
       ROUND(SUM(AMOUNT)::numeric,2) AS total_claims,
       ROUND(AVG(AMOUNT)::numeric,2) AS avg_severity
FROM public.claims_transactions
WHERE TYPE='CHARGE'
GROUP BY PROCEDURECODE
