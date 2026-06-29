---
url: https://developer.focus.teamleader.eu/docs/api/invoices
title: Invoices | Teamleader Developers
words: 204
---
- [](/)
- API Reference
- Invoicing
- Invoices

Invoices

Teamleader provides a whole set of endpoints to make it easy to develop integrations with invoices. New invoices are created in accordance with this flow: invoice.draft → invoice.book. Invoices can also be updated, deleted or credited.

Required scopes: invoices

📄️invoices.list  
\
Get a list of invoices.

📄️invoices.info  
\
Get details for a single invoice.

📄️invoices.download  
\
Download an invoice in a specific format.

📄️invoices.draft  
\
Draft a new invoice.

📄️invoices.update  
\
Update a draft invoice. Booked invoices cannot be updated.

📄️invoices.updateBooked  
\
Update a booked invoice. Only available when editing booked invoices is allowed through the settings.

📄️invoices.copy  
\
Creates a new draft invoice based on another invoice.

📄️invoices.book  
\
Book a draft invoice.

📄️invoices.delete  
\
Delete an existing invoice. Only possible for draft invoices or the last booked invoice.

📄️invoices.registerPayment  
\
Register a payment for an invoice.

📄️invoices.removePayments  
\
Marks an invoice as unpaid and removes all linked payments. This will also trigger a re-rendering of the invoice PDF.

📄️invoices.credit  
\
Credit an invoice completely.

📄️invoices.creditPartially  
\
Credit an invoice partially.

📄️invoices.send  
\
Send an invoice via e-mail.

📄️invoices.sendViaPeppol  
\
Send an invoice via the Peppol network.

Previous  
\
activityTypes.list

Next  
\
invoices.list
