-- Which sales agent made the most in sales in 2010?
select count(invoices.invoiceId) as 'Number of Sales in 2010', employees.FirstName, employees.LastName from invoices, employees, customers where customers.supportRepId = employees.employeeId and invoices.InvoiceDate like '%2010%' group by employees.FirstName;
