SELECT TOP (1000) [Family_ID]
      ,[Member_ID]
      ,[Transaction_Date]
      ,[Category]
      ,[Amount]
      ,[Income]
      ,[Savings]
      ,[Monthly_Expenses]
      ,[Loan_Payments]
      ,[Credit_Card_Spending]
      ,[Dependents]
      ,[Financial_Goals_Met]
  FROM [Family Financial insights].[dbo].[family_financial_and_transactions_data]
  /*Checking missing Values*/
  Select 'Family_ID', 'Member_ID', 'Transaction_date', 'Category','Amount', 'Income', 'Savings', 'Monthly_Expenses', 'Loan_Payments', 'Credit_Card_Spending', 'Dependents', 'Financial_Goals_Met' , COUNT(*) as NullCount
  from family_financial_and_transactions_data
  where 'Family_ID' is Null;
