select 'Low Salary' as category,COUNT(*) as accounts_count from Accounts
where income < 20000

UNION ALL

select 'Average Salary' as category, COUNT(*) AS accounts_count from Accounts
where income Between 20000 AND 50000

UNION ALL

select  'High Salary' as category,COUNT(*) as accounts_count from Accounts
where income > 50000;
