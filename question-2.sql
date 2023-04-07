-- Show the sales agent's full name and invoices associated with each sales agent.
select employees.FirstName, employees.LastName, invoices.* from customers, employees, invoices where customers.supportRepID = employees.employeeId and customers.customerId = invoices.customerId;
