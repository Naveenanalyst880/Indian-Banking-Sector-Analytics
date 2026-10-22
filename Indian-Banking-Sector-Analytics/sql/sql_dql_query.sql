create database indian_banking_analytics;
USE indian_banking_analytics;
SHOW DATABASES;

SELECT COUNT(*) AS total_rows
FROM digital_analytics;
DESCRIBE digital_analytics;
#Query 2 — Total records
SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_name = 'digital_analytics';

#First 10 records
select * from digital_analytics limit 10;
#Query 3 — Banks count
select count(distinct Bank_Name) as total_banks from digital_analytics;
#Query 4 — State count
select count(distinct state) as total_states from digital_analytics;
#Query 5 — Bank-wise ATM
SELECT Bank_Name,
SUM(ATM_Onsite) AS Total_Onsite_ATM,
SUM(ATM_Offsite) AS Total_Offsite_ATM
FROM digital_analytics
GROUP BY Bank_Name
ORDER BY Total_Onsite_ATM DESC;
#Query 6 — State-wise UPI QR
SELECT State,
SUM(UPI_QR) AS Total_UPI_QR
FROM digital_analytics
GROUP BY State
ORDER BY Total_UPI_QR DESC;
#WHERE + ORDER BY
#Query 7 — Public Sector Banks only
select * from digital_analytics where Bank_Type ='Public sector';

select * from digital_analytics where State ='Telangana';
#Query 8 — Telangana records
SELECT Bank_Name,State,City,ATM_Onsite,ATM_Offsite
FROM digital_analytics
WHERE State = 'Telangana';
#Query 9 — High Onsite ATM records
select Bank_Name,State,ATM_Onsite 
from digital_analytics where ATM_Onsite>3000 
order by ATM_Onsite desc;
#Query 10 — Top 10 records by UPI QR
select Bank_Name,State,UPI_QR FROM digital_analytics order by UPI_QR desc limit 10;
#GROUP BY + HAVING
#Query 11 — Bank-wise total ATM
select Bank_Name,sum(ATM_Onsite)as total_onsite_Atm,
sum(ATM_offsite) as total_offsite_Atm from digital_analytics 
group by Bank_Name order by total_onsite_Atm desc;
#Query 12 — State-wise total POS terminals
select State,sum(POS_Terminals) as total_pos_terminals from digital_analytics
group by State order by total_pos_terminals desc;
#Query 13 — State-wise average UPI QR
select State,avg(UPI_QR) as state_wise_avg from digital_analytics 
group by State order by state_wise_avg desc;
#Query 14 — HAVING
#Total ATM > 50,000
select Bank_Name,sum(ATM_Onsite + ATM_Offsite) as total_ATMs
from digital_analytics group by Bank_Name having total_ATMS>50000 order by total_ATMs desc;
#CASE WHEN
#Query 15 — ATM Category
SELECT
    Bank_Name,
    State,
    ATM_Onsite,
    case
        WHEN ATM_Onsite >= 3000 THEN 'High'
        WHEN ATM_Onsite >= 1500 THEN 'Medium'
        ELSE 'Low'
    END AS ATM_Category
FROM digital_analytics;
#Query 16 — UPI QR Category
select 
    Bank_Name,
    State,
    UPI_QR,
    case
        when UPI_QR >= 5000 then 'high'
        when UPI_QR >= 2500 then 'medium'
        else 'low'
    end as "UPI_QR Category"
from digital_analytics;    
#Query 17 — Digital Banking Score
select Bank_Name,State,ATM_Onsite,POS_Terminals,UPI_QR,
case 
when ATM_Onsite >=2000 
 and POS_Terminals >=3000 and UPI_QR >=3000
 then 'Strong Digital Infrastructure' 
when ATM_Onsite >=1000 and POS_Terminals >1500 then 'Moderate Digital Infrastructure'
else 'Low Digital Infrastructure' end as 'Developing Digital Infrastructure'
 from digital_analytics;
 #Bank reference table create
 create table bank_master(
 Bank_code varchar(10),Bank_Name varchar(100),Bank_Type varchar(50),Ownership varchar(50) );
 
 INSERT INTO bank_master
(Bank_Code, Bank_Name, Bank_Type, Ownership)
VALUES
('B001','State Bank of India','Public','Public'),
('B002','Bank of Baroda','Public','Public'),
('B003','Punjab National Bank','Public','Public'),
('B004','Canara Bank','Public','Public'),
('B005','Union Bank of India','Public','Public'),
('B013','HDFC Bank','Private','Private'),
('B014','ICICI Bank','Private','Private'),
('B015','Axis Bank','Private','Private'),
('B016','Kotak Mahindra Bank','Private','Private'),
('B017','IndusInd Bank','Private','Private');
SELECT * FROM bank_master;
#INNER JOIN
select d.Bank_Name, b.Bank_type, b.Ownership,
sum(ATM_Onsite) as total_ATM_Onsite from digital_analytics d inner join bank_master b
on d.Bank_ID = b.Bank_Code 
group by d.Bank_Name, b.Bank_type,b.Ownership order by total_ATM_Onsite desc;
#State Master JOIN
create table state_master(
State_Code varchar(10),
State_Name varchar(50),
Region varchar(50)
);
# State data insert
insert into state_master values('AP','Andhra Pradesh','South'),
('AS','Assam','North-East'),
('BR','Bihar','East'),
('GJ','Gujarat','West'),
('KA','Karnataka','South'),
('KL','Kerala','South'),
('MH','Maharashtra','West'),
('TN','Tamil Nadu','South'),
('TS','Telangana','South'),
('UP','Uttar Pradesh','North');

select * from state_master;
#State JOIN
select d.State,s.Region,
sum(d.ATM_Onsite) as total_Onsite,
sum(d.UPI_QR) as total_upi_qr from digital_analytics d inner join state_master s
on d.State=s.State_Name group by d.State,s.Region  order by total_Onsite desc;
#Region-wise analysis
select s.Region,
sum(d.ATM_Onsite) as total_ATM_Onsite,
sum(d.UPI_QR) as total_upi_qr,
sum(d.POS_Terminals) as total_pos_terminals
from digital_analytics d inner join state_master s on d.State=s.State_Name 
group by s.Region order by total_ATM_Onsite desc; 
#Financial Year-wise Analysis
#Query 1 — Year-wise ATM & QR
select
    Financial_Year,
    sum(ATM_Onsite) as Total_Onsite_ATM,
    sum(ATM_Offsite) as Total_Offsite_ATM,
    sum(UPI_QR) as Total_UPI_QR
from digital_analytics
group by  Financial_Year
order by  Financial_Year;

#Query 2 — Year-wise Card Transactions
select Financial_Year,
sum(CreditCard_POS_Volume_Lakh) AS CreditCard_POS_Volume,
sum(DebitCard_POS_Volume_Lakh) AS DebitCard_POS_Volume from digital_analytics
group by Financial_Year order by Financial_Year desc;
#Query 3 — Year-wise comparison
select Financial_Year,sum(Credit_Cards) as total_credit_card,
sum(Debit_Cards) as total_debit_card from digital_analytics 
group by Financial_Year order by Financial_Year desc;

#Step 1: Subquery
select Bank_Name,Total_ATMs
from (select Bank_Name,sum(ATM_Onsite + ATM_Offsite) as 'Total_ATMs'
from digital_analytics group by Bank_Name ) as t 
where Total_ATMs >800000  order by Total_ATMs desc;

#Step 2: Bank Ranking using RANK()
select Bank_Name,Total_ATMs,rank() over(order by Total_ATMs desc) as 'ATM_Ranks'
from (select Bank_Name,sum(ATM_Onsite + ATM_Offsite) as 'Total_ATMs'
from digital_analytics group by Bank_Name ) as t 
where Total_ATMs >500000 ;

#Step 1: SQL Final Validation
select count(*) as total_records from digital_analytics;

#2. Bank-wise records
select Bank_Name,count(*) as Record_Count
from digital_analytics group by Bank_Name order by Record_Count desc;

#3. Missing values check
SELECT
    SUM(CASE WHEN Bank_Name IS NULL OR TRIM(Bank_Name) = '' THEN 1 ELSE 0 END) AS Missing_Bank_Name,
    SUM(CASE WHEN State IS NULL OR TRIM(State) = '' THEN 1 ELSE 0 END) AS Missing_State,
    SUM(CASE WHEN Financial_Year IS NULL OR TRIM(Financial_Year) = '' THEN 1 ELSE 0 END) AS Missing_Financial_Year
FROM digital_analytics;

#total null
select ( isnull(Bank_Name)+isnull(State)+isnull(Financial_Year)) as 'total_null' from digital_analytics;
#4. Financial-year summary
select Financial_Year,count(*) as Records from digital_analytics group by Financial_Year order by Financial_Year;