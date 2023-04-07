-- Find tracks (id, name and composer) that are part of a line in an invoice.
select tracks.trackId, tracks.Name, tracks.composer from invoices, invoice_items, tracks where invoices.d = invoice_items.invoiceId and invoice_items.trackId = tracks.trackId;
