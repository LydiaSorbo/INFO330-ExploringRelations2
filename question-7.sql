-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
select tracks.trackId, tracks.Name, tracks.composer from invoice_items, tracks where tracks.trackId not in(select invoice_items.trackId from invoice_items) group by tracks.Name;
