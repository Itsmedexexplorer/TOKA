---
name: expense-tracker
description: Build an Excel expense tracker with categories, monthly totals and a budget-vs-actual summary, optionally filled from pasted transactions.
category: Money
---

# Expense tracker

1. Ask for the currency, the categories they want (suggest: Rent, Food, Transport, Bills, Shopping, Health, Fun, Other), and a monthly budget per category if they have one.
2. If they pasted or attached transactions (bank export, notes), clean them up into Date · Description · Category · Amount, and pick a category from the description.
3. Create the workbook with `create_xlsx`:
   - Sheet **Transactions**: Date, Description, Category, Amount, with a SUM total row.
   - Sheet **Summary**: one row per category with Budget, Spent (`SUMIF` over Transactions) and Left (Budget − Spent), plus a total row.
4. Save it as `Expenses – <Month Year>.xlsx` in Documents and explain how to add new rows. This is bookkeeping help, not financial advice.
