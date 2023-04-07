-- What was the most purchased track of 2013?
select count(tracks.Name) as 'Number of Purchases in 2013', tracks.Name from invoices, invoice_items, tracks where invoices.invoiceId = invoice_items.invoiceId and invoice_items.trackId = tracks.trackId and invoices.invoiceDate like '%2013%' group by tracks.name order by count(tracks.Name) desc;
