CREATE DATABASE banking_capstone;
USE banking_capstone;
SELECT COUNT(*) AS Total_Records
FROM digital_banking
DESCRIBE digital_banking;
SELECT COUNT(*) 
FROM information_schema.columns 
WHERE table_schema = 'banking_capstone' 
  AND table_name = 'digital_banking';
  
  
select count(*) as total_missing_values,sum(ATM_Onsite is null) as total_ATM_missing,
sum(UPI_QR is null) as total_UPIQR_missing,sum(Credit_Cards is null) as total_creadit_cards_missing,
sum(Debit_Cards is null) as total_debitcards_missing from digital_banking;

#bank_wise atms analysis
select Bank_Name,round(avg(ATM_Onsite),2) as average_values
from digital_banking  group by Bank_Name order by average_values  limit 10;

SELECT
    State,
    ROUND(AVG(ATM_Onsite), 2) AS Avg_ATM_Count
FROM digital_banking
GROUP BY State
ORDER BY Avg_ATM_Count DESC;

USE banking_capstone;
SELECT
    Bank_Name,
    ROUND(AVG(UPI_QR), 2) AS Avg_UPI_QR
FROM digital_banking
GROUP BY Bank_Name
ORDER BY Avg_UPI_QR DESC
LIMIT 10;

SELECT
    State,
    ROUND(AVG(UPI_QR), 2) AS Avg_UPI_QR
FROM digital_banking
GROUP BY State
ORDER BY Avg_UPI_QR DESC;
SELECT COUNT(*) AS Total_Records
FROM banking_;


SELECT
    SUM(ATM_Onsite) AS Total_Onsite_ATMs,
    SUM(ATM_Offsite) AS Total_Offsite_ATMs,
    SUM(POS_Terminals) AS Total_POS_Terminals,
    SUM(Micro_ATMs) AS Total_Micro_ATMs
FROM digital_banking;
SELECT
    State,
    SUM(ATM_Onsite + ATM_Offsite) AS Total_ATMs
FROM digital_banking
GROUP BY State
ORDER BY Total_ATMs DESC;

SELECT
    Bank_Name,
    SUM(UPI_QR) AS Total_UPI_QR
FROM digital_banking
GROUP BY Bank_Name
ORDER BY Total_UPI_QR DESC
LIMIT 10;


SELECT
    Financial_Year,
    SUM(ATM_Onsite + ATM_Offsite) AS Total_ATMs
FROM digital_banking
GROUP BY Financial_Year
ORDER BY Financial_Year;

SELECT
    Bank_Name,
    SUM(Credit_Cards) AS Total_Credit_Cards,
    SUM(Debit_Cards) AS Total_Debit_Cards
FROM digital_banking
GROUP BY Bank_Name
ORDER BY Total_Credit_Cards DESC;
#merged_dataset
select * from merged_banking_data;
select count(*) as total_rows from merged_banking_data;
select * from merged_banking_data limit 5;
describe merged_banking_data;
#Total records and data overview
select count(distinct Bank_Name) as total_Banks,
count(distinct State) as total_States,
count(distinct Financial_Year) as total_financial_years
from merged_banking_data;

#State-wise banking performance
select State,
SUM(Branch_Count) as Total_Branches,
SUM(Banking_Outlet_Count) as Total_Banking_Outlets,
SUM(ATM_Yes_Count) as Total_ATMs,
SUM(UPI_Transactions_Lakh) as Total_UPI_Transactions_Lakh
from merged_banking_data
group by  State
order by Total_Banking_Outlets desc;

#Bank-wise digital payments analysis
select
Bank_Name,
SUM(NEFT_Transactions_Lakh) as Total_NEFT,
SUM(RTGS_Transactions_Lakh) as Total_RTGS,
SUM(IMPS_Transactions_Lakh) as Total_IMPS,
SUM(UPI_Transactions_Lakh) as Total_UPI
from merged_banking_data
group by  Bank_Name
order by  Total_UPI desc;

#Financial-year trend
select
Financial_Year,
SUM(UPI_Transactions_Lakh) as UPI_Transactions,
SUM(NEFT_Transactions_Lakh) as NEFT_Transactions,
SUM(IMPS_Transactions_Lakh) as IMPS_Transactions
from merged_banking_data
group by  Financial_Year
order by Financial_Year;

#Deposits, advances and CASA comparison
select
Bank_Name,
SUM(Total_Deposits_Cr) as Total_Deposits_Cr,    
SUM(Total_Advances_Cr) as Total_Advances_Cr,
AVG(Avg_CASA_Ratio_Percent) as Average_CASA_Ratio
from merged_banking_data
group by  Bank_Name
order by Total_Deposits_Cr desc;

#Banking outlets opening dates check
select
COUNT(*) as Total_Records,
COUNT(First_Outlet_Opening_Date) as Records_With_Opening_Date,
sum(First_Outlet_Opening_Date is null) as Missing_Opening_Dates
from merged_banking_data;

select
Bank_Name,
avg(Failed_Transaction_Rate) as Avg_Failure_Rate,
SUM(Customer_Complaints) as Total_Complaints
from merged_banking_data
group by  Bank_Name
order by Avg_Failure_Rate desc;

SELECT
Bank_Name,
AVG(Avg_Transaction_Value) AS Average_Transaction_Value,
AVG(Failed_Transaction_Rate) AS Average_Failure_Rate
FROM merged_banking_data
GROUP BY Bank_Name
ORDER BY Average_Transaction_Value DESC;

USE banking_capstone;

SELECT
State,
SUM(Banking_Outlet_Count) AS Total_Outlets,
SUM(UPI_Transactions_Lakh) AS Total_UPI_Transactions,
SUM(Mobile_Transactions_Lakh) AS Total_Mobile_Transactions
FROM merged_banking_data
GROUP BY State
ORDER BY Total_Outlets DESC;


