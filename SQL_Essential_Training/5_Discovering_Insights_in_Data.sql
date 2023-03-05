	-- 5.2 Filter and analyze numeric data

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: Customers who purchased two songs at $0.99 each
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total
FROM
	Invoice
WHERE
	Total='1.98'
ORDER BY
	InvoiceDate;

	-- 5.3 BETWEEN and IN operators

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: How many invoices exist between $1.98 and $5.00?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total
FROM
	Invoice
WHERE
	Total BETWEEN '1.98' AND '5.00'
ORDER BY
	InvoiceDate;

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: How many invoices do we have that are exacly $1.98 or $3.96?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total
FROM
	Invoice
WHERE
	Total IN (1.98, 3.96)
ORDER BY
	InvoiceDate;

	-- 5.4 Filter and analyze text data

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: How many invoices were billed to Brussels?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total
FROM
	Invoice
WHERE
	BillingCity = 'Brussels'
ORDER BY
	InvoiceDate;

/*
Created by: Marek Szumny
Create date: 2023/03/05
Description: How many invoices were billed to Brussels, Orlando or Paris?
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total
FROM
	Invoice
WHERE
	BillingCity IN ('Brussels', 'Orlando', 'Paris')
ORDER BY
	InvoiceDate;