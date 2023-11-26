-- Databricks notebook source
-- DBTITLE 1,Details table
Select * from details

-- COMMAND ----------

-- DBTITLE 1,Order table
select * from orders

-- COMMAND ----------

-- DBTITLE 1,Total Sale
select sum(amount) from details

-- COMMAND ----------

-- DBTITLE 1,Total Profit
select sum(Profit) from details

-- COMMAND ----------

-- DBTITLE 1,Profit by State
select State, sum(d.Profit) from details d join orders o ON d.`Order ID`= o.`Order ID` group by o.State order by sum(d.Profit) DESC

-- COMMAND ----------

-- DBTITLE 1,Sell by category
select Category, sum(Quantity) from details d join orders o ON d.`Order ID`= o.`Order ID` group by Category order by sum(d.Quantity) DESC

-- COMMAND ----------

-- DBTITLE 1,Used payment method
select d.PaymentMode, sum(Quantity) from details d join orders o ON d.`Order ID`= o.`Order ID` group by d.PaymentMode order by sum(d.Quantity) DESC

-- COMMAND ----------

select d.`Sub-Category`, sum(Quantity) from details d join orders o ON d.`Order ID`= o.`Order ID` group by d.`Sub-Category` order by sum(d.Quantity) DESC
