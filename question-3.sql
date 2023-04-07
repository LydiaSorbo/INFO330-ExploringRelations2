-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
select tracks.Name, tracks.composer, invoices.* from invoices, tracks, invoice_items where invoices.invoiceId = invoice_items.invoiceId and invoice_items.trackId = tracks.trackId;
