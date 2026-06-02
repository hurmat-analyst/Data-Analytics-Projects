SELECT * FROM sales.customers;
SELECT count(*) FROM sales.customers;

SELECT * FROM sales.products;

SELECT * FROM sales.markets;
SELECT count(*) FROM sales.markets;

SELECT * FROM sales.transactions;
SELECT * FROM sales.transactions 
where market_code="Mark001";

SELECT count(*) FROM sales.transactions 
where market_code="Mark001";

SELECT * FROM sales.transactions 
where currency="USD";

SELECT * FROM sales.date;

SELECT sales.transactions.*, sales.date.* FROM sales.transactions 
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020;

SELECT SUM(sales.transactions.sales_amount) AS revenue_by_year FROM sales.transactions 
INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020;

SELECT SUM(sales.transactions.sales_amount) AS revenue_by_market FROM sales.transactions 
INNER JOIN sales.date ON 
sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code="Mark001";

SELECT distinct product_code FROM sales.transactions 
where market_code = 'Mark001';

SELECT distinct(transactions.currency) FROM transactions;
SELECT count(*) FROM transactions
where transactions.currency='INR\r';

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");

SELECT SUM(transactions.sales_amount) FROM transactions 
INNER JOIN date ON transactions.order_date=date.date 
where date.year=2020 and transactions.market_code="Mark001";


