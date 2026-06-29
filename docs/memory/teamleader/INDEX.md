# Teamleader Focus API — Agent Navigation Index

Offline mirror of the official Teamleader Focus API docs (`developer.focus.teamleader.eu`). Each API entry is a `resource.action` RPC method called via `POST https://api.focus.teamleader.eu/<resource>.<action>` with a JSON body. Read a single file for the full request body schema, field types, possible values, includes, and a JSON example. Do not guess field names or filters — verify against the file.

**Mirror root:** `docs/memory/teamleader/` · **Source:** `developer.focus.teamleader.eu/docs` · 360 API pages

## Start here (guides)

| Guide | File |
|-------|------|
| Authentication — OAuth 2 is an authorization framework that allows a user to grant limited access to data in a Teamleader account, without having to expose their credentials. | [`guides/authentication.md`](guides/authentication.md) |
| Additions — We list all backwards-compatible additions here. These are currently available in all published versions. (There is also a list of backwards-incompatible upgrades available, but those only apply if you upgrade your API version.) | [`guides/changelog-additions.md`](guides/changelog-additions.md) |
| Breaking Changes — We list all backwards-incompatible changes here. As described before, new additions and forwards-compatible changes don’t need a new API version and can be found here. | [`guides/changelog-breaking-changes.md`](guides/changelog-breaking-changes.md) |
| Types of Changes — We consider the following changes to be backwards-compatible: | [`guides/changelog-types-of-changes.md`](guides/changelog-types-of-changes.md) |
| Upgrading your API version — This documentation only reflects the latest version of the API. If you need to make changes to your client or you want to make use of the latest feature, you might need to upgrade your API version. | [`guides/changelog-upgrading-api-version.md`](guides/changelog-upgrading-api-version.md) |
| General Principles — Our API consists of HTTP RPC-style methods, in the form of https://api.focus.teamleader.eu/resource.action. | [`guides/general-principles.md`](guides/general-principles.md) |
| Introduction — This is the documentation of the Teamleader Focus API. If you have any feedback, or are you missing functionality to support your use case? Let us know via api@teamleader.eu. | [`guides/introduction.md`](guides/introduction.md) |
| Sideloading — Sideloading (or compound documents) allows you to retrieve relevant related items as part of a single request. For example, a deal has a reference to a lead which can either be a contact or a company: | [`guides/sideloading.md`](guides/sideloading.md) |

- **Auth:** OAuth 2 authorization-code flow + token refresh → `guides/authentication.md`.
- **Conventions:** RPC endpoint style, pagination, filtering, sorting, errors, rate limits → `guides/general-principles.md`.
- **Sideloading** (embedding related resources via `includes`) → `guides/sideloading.md`.
- **Versioning / breaking changes** (`X-Api-Version` header) → `guides/changelog-*.md`.

## API reference by domain

### General

- **Closing Days** ([`api/closing-days.md`](api/closing-days.md)) — \
  - [`closingDays.add`](api/closing-days-add.md) — Adds a closing day for the account.
  - [`closingDays.delete`](api/closing-days-delete.md) — Removes a closing day for the account.
  - [`closingDays.list`](api/closing-days-list.md) — Returns information about closing days of the account
- **Currencies** ([`api/currencies.md`](api/currencies.md)) — \
  - [`currencies.exchangeRates`](api/currencies-exchange-rates.md) — Get a list of exchange rates for a provided currency.
- **Custom Fields** ([`api/custom-fields.md`](api/custom-fields.md)) — Custom fields are used to add additional data/properties to entities within Teamleader.
  - [`customFieldDefinitions.create`](api/custom-field-definitions-create.md) — Create a custom field definition.
  - [`customFieldDefinitions.info`](api/custom-field-definitions-info.md) — Get info about a specific custom field definition.
  - [`customFieldDefinitions.list`](api/custom-field-definitions-list.md) — Get a list of all the definitions of custom fields.
- **Day Off Types** ([`api/day-off-types.md`](api/day-off-types.md)) — \
  - [`dayOffTypes.create`](api/day-off-types-create.md) — Create a new day off type.
  - [`dayOffTypes.delete`](api/day-off-types-delete.md) — Delete a day off type.
  - [`dayOffTypes.list`](api/day-off-types-list.md) — Returns a list of day off types for the account
  - [`dayOffTypes.update`](api/day-off-types-update.md) — Update a day off type.
- **Days Off** ([`api/days-off.md`](api/days-off.md)) — \
  - [`daysOff.bulkDelete`](api/days-off-bulk-delete.md) — Deletes a list of days off for the given user.
  - [`daysOff.import`](api/days-off-import.md) — Imports a list of days off for the given user.
- **Departments** ([`api/departments.md`](api/departments.md)) — Departments are used to split quotations and invoices for different legal entities or within one organisation.
  - [`departments.info`](api/departments-info.md) — Get details for a single department.
  - [`departments.list`](api/departments-list.md) — Get a list of departments.
- **Document Templates** ([`api/document-templates.md`](api/document-templates.md)) — \
  - [`documentTemplates.list`](api/document-templates-list.md) — Get a list of all document templates.
- **Email Tracking** ([`api/email-tracking.md`](api/email-tracking.md)) — \
  - [`emailTracking.create`](api/email-tracking-create.md) — Create a new email tracking.
  - [`emailTracking.list`](api/email-tracking-list.md) — Get a list of all email tracking.
- **Notes** ([`api/notes.md`](api/notes.md)) — \
  - [`notes.create`](api/notes-create.md) — Create a new note.
  - [`notes.delete`](api/notes-delete.md) — Delete a note.
  - [`notes.list`](api/notes-list.md) — Get a list of all notes.
  - [`notes.update`](api/notes-update.md) — Update an existing note.
- **Teams** ([`api/teams.md`](api/teams.md)) — Required scopes: users
  - [`teams.list`](api/teams-list.md) — Gets a list of all teams.
- **Users** ([`api/users.md`](api/users.md)) — Users are co-workers in a Teamleader account.
  - [`users.getWeekSchedule`](api/users-get-week-schedule.md) — Returns information about week schedule of a user. Only available with the Weekly working schedule feature.
  - [`users.info`](api/users-info.md) — Get details for a single user.
  - [`users.list`](api/users-list.md) — Get a list of all users.
  - [`users.listDaysOff`](api/users-list-days-off.md) — Returns information about days off of a given user.
  - [`users.me`](api/users-me.md) — Get the current authenticated user.
- **Work Types** ([`api/work-types.md`](api/work-types.md)) — Work types define the type of work for events or time tracking. Hourly rates can be added to work types, so that the work can be billed to a customer.
  - [`workTypes.list`](api/work-types-list.md) — Get a list of all work types, sorted alphabetically (on their name).

### CRM

- **Addresses** ([`api/addresses.md`](api/addresses.md)) — We provide a set of data which can be used to build addresses.
  - [`levelTwoAreas.list`](api/level-two-areas-list.md) — Get a list of level two areas (which correspond to provinces, departments or states in most countries).
- **Business Types** ([`api/business-types.md`](api/business-types.md)) — Each country has a specific set of business types or range of legal entities. You can specify the business type when adding or updating a company.
  - [`businessTypes.list`](api/business-types-list.md) — Get the names of business types (legal structures) a company can have within a certain country, sorted alphabetically.
- **Companies** ([`api/companies.md`](api/companies.md)) — Companies are legal entities, usually linked to a VAT and/or local business number.
  - [`companies.add`](api/companies-add.md) — Add a new company.
  - [`companies.delete`](api/companies-delete.md) — Delete a company.
  - [`companies.info`](api/companies-info.md) — Get details for a single company.
  - [`companies.list`](api/companies-list.md) — Get a list of companies.
  - [`companies.tag`](api/companies-tag.md) — Add a new or existing tag to a company.
  - [`companies.untag`](api/companies-untag.md) — Remove a tag from a company.
  - [`companies.update`](api/companies-update.md) — Update a company.
  - [`companies.uploadLogo`](api/companies-upload-logo.md) — Update the logo of a company.
- **Contacts** ([`api/contacts.md`](api/contacts.md)) — Contacts are physical entities who are added to your CRM database. Contacts might be linked to one or more companies.
  - [`contacts.add`](api/contacts-add.md) — Add a new contact.
  - [`contacts.delete`](api/contacts-delete.md) — Delete a contact.
  - [`contacts.info`](api/contacts-info.md) — Get details for a single contact.
  - [`contacts.linkToCompany`](api/contacts-link-to-company.md) — Link a contact to a company.
  - [`contacts.list`](api/contacts-list.md) — Get a list of contacts.
  - [`contacts.tag`](api/contacts-tag.md) — Add a new or existing tag to a contact.
  - [`contacts.unlinkFromCompany`](api/contacts-unlink-from-company.md) — Unlink a contact from a company.
  - [`contacts.untag`](api/contacts-untag.md) — Remove a tag from a contact.
  - [`contacts.update`](api/contacts-update.md) — Update a contact.
  - [`contacts.updateCompanyLink`](api/contacts-update-company-link.md) — Update contact to company link.
  - [`contacts.uploadAvatar`](api/contacts-upload-avatar.md) — Update the avatar of a contact.
- **Tags** ([`api/tags.md`](api/tags.md)) — Tags are used to label contacts or companies, so that they can easily be filtered or grouped into segments.
  - [`tags.list`](api/tags-list.md) — Get a list of tags.

### Deals

- **Deal Phases** ([`api/deal-phases.md`](api/deal-phases.md)) — Deal phases are the different phases a deal typically goes through. A deal can be moved to either a next or previous phase. A deal can be marked as won or lost independently from the deal phase.
  - [`dealPhases.create`](api/deal-phases-create.md) — Create a new deal phase.
  - [`dealPhases.delete`](api/deal-phases-delete.md) — Delete a phase.
  - [`dealPhases.duplicate`](api/deal-phases-duplicate.md) — Create a new deal phase by duplicating an existing one.
  - [`dealPhases.list`](api/deal-phases-list.md) — Get a list of all phases a deal can go through, sorted by their order in the flow.
  - [`dealPhases.move`](api/deal-phases-move.md) — Move a phase to a new position in the pipeline.
  - [`dealPhases.update`](api/deal-phases-update.md) — Update a deal phase.
- **Deal Pipelines** ([`api/deal-pipelines.md`](api/deal-pipelines.md)) — Each deal belongs to a specific pipeline, in which it goes through the different deal phases.
  - [`dealPipelines.create`](api/deal-pipelines-create.md) — Create a new deal pipeline.
  - [`dealPipelines.delete`](api/deal-pipelines-delete.md) — Delete a deal pipeline.
  - [`dealPipelines.duplicate`](api/deal-pipelines-duplicate.md) — Create a new deal pipeline by duplicating an existing one.
  - [`dealPipelines.list`](api/deal-pipelines-list.md) — Get a list of all deal pipelines.
  - [`dealPipelines.markAsDefault`](api/deal-pipelines-mark-as-default.md) — Mark a pipeline as default.
  - [`dealPipelines.update`](api/deal-pipelines-update.md) — Update a single deal pipeline.
- **Deal Sources** ([`api/deal-sources.md`](api/deal-sources.md)) — Deal sources are used to track the origin of a deal.
  - [`dealSources.list`](api/deal-sources-list.md) — Get a list of all deal sources, sorted alphabetically (on name).
- **Deals** ([`api/deals.md`](api/deals.md)) — Deals are sale opportunities, which need to be followed up by their responsible user. A deal can move through specific deal phases, and be marked as won or lost.
  - [`deals.create`](api/deals-create.md) — Create a new deal for a customer.
  - [`deals.delete`](api/deals-delete.md) — Delete a deal.
  - [`deals.info`](api/deals-info.md) — Get details for a single deal.
  - [`deals.list`](api/deals-list.md) — Get a list of deals.
  - [`deals.lose`](api/deals-lose.md) — Mark a deal as lost.
  - [`deals.move`](api/deals-move.md) — Move the deal to a different phase.
  - [`deals.update`](api/deals-update.md) — Update a deal.
  - [`deals.win`](api/deals-win.md) — Mark a deal as won.
  - [`lostReasons.list`](api/lost-reasons-list.md) — Get a list of lost reasons for deals.
- **Orders** ([`api/orders.md`](api/orders.md)) — Required scopes: orders
  - [`orders.info`](api/orders-info.md) — Get details for a single order.
  - [`orders.list`](api/orders-list.md) — Get a list of orders.
- **Quotations** ([`api/quotations.md`](api/quotations.md)) — A quotation is a sales offer for a specific customer. It is always attached to a deal. Quotations can be signed online via Cloudsign.
  - [`quotations.accept`](api/quotations-accept.md) — Mark a quotation as accepted.
  - [`quotations.create`](api/quotations-create.md) — Create a quotation.
  - [`quotations.delete`](api/quotations-delete.md) — Delete a quotation.
  - [`quotations.download`](api/quotations-download.md) — Download a quotation in a specific format.
  - [`quotations.info`](api/quotations-info.md) — Get a quotation.
  - [`quotations.list`](api/quotations-list.md) — Get a list of quotations.
  - [`quotations.send`](api/quotations-send.md) — Send a quotation.
  - [`quotations.update`](api/quotations-update.md) — Update a quotation.

### Calendar

- **Activity Types** ([`api/activity-types.md`](api/activity-types.md)) — Activity types identify the different types of events that take place within your organisation. Currently only three activity types are available: tasks, meetings and calls.
  - [`activityTypes.list`](api/activity-types-list.md) — Get a list of all activity types.
- **Calendar events** ([`api/calendar-events.md`](api/calendar-events.md)) — Calendar events are scheduled events in your calendar. A calendar event involves a particular activity type: a task, meeting or call.
  - [`events.cancel`](api/events-cancel.md) — Cancel a calendar event (for all attendees).
  - [`events.create`](api/events-create.md) — Create a new calendar event.
  - [`events.info`](api/events-info.md) — Get details for a single calendar event.
  - [`events.list`](api/events-list.md) — Get a list of calendar events.
  - [`events.update`](api/events-update.md) — Update a calendar event.
- **Call Outcomes** ([`api/call-outcomes.md`](api/call-outcomes.md)) — \
  - [`callOutcomes.list`](api/call-outcomes-list.md) — Get a list of call outcomes.
- **Calls** ([`api/calls.md`](api/calls.md)) — \
  - [`calls.add`](api/calls-add.md) — Add a new call.
  - [`calls.complete`](api/calls-complete.md) — Mark a call as complete.
  - [`calls.delete`](api/calls-delete.md) — Deletes a call.
  - [`calls.info`](api/calls-info.md) — Get information about a call.
  - [`calls.list`](api/calls-list.md) — Get a list of calls.
  - [`calls.update`](api/calls-update.md) — Update a new call.
- **Meetings** ([`api/meetings.md`](api/meetings.md)) — \
  - [`meetings.complete`](api/meetings-complete.md) — Mark a meeting as complete.
  - [`meetings.createReport`](api/meetings-create-report.md) — Creates a report for a meeting.
  - [`meetings.delete`](api/meetings-delete.md) — Deletes a meeting.
  - [`meetings.info`](api/meetings-info.md) — Get information about a meeting.
  - [`meetings.list`](api/meetings-list.md) — Get a list of meetings.
  - [`meetings.schedule`](api/meetings-schedule.md) — Schedule a meeting.
  - [`meetings.update`](api/meetings-update.md) — Update a meeting.

### Invoicing

- **Commercial Discounts** ([`api/commercial-discounts.md`](api/commercial-discounts.md)) — \
  - [`commercialDiscounts.list`](api/commercial-discounts-list.md) — Get a list of commercial discounts.
- **Credit Notes** ([`api/credit-notes.md`](api/credit-notes.md)) — Credit notes are created when certain products or services are not delivered according to their invoice. The credit note reduces the due amount of the credited invoice.
  - [`creditNotes.download`](api/credit-notes-download.md) — Download a credit note in a specific format.
  - [`creditNotes.info`](api/credit-notes-info.md) — Get details for a single credit note
  - [`creditNotes.list`](api/credit-notes-list.md) — List credit notes.
  - [`creditNotes.sendViaPeppol`](api/credit-notes-send-via-peppol.md) — Send a credit note via the Peppol network.
- **Invoices** ([`api/invoices.md`](api/invoices.md)) — Teamleader provides a whole set of endpoints to make it easy to develop integrations with invoices. New invoices are created in accordance with this flow: invoice.draft → invoice.book. Invoices can also be updated, deleted or credited.
  - [`invoices.book`](api/invoices-book.md) — Book a draft invoice.
  - [`invoices.copy`](api/invoices-copy.md) — Creates a new draft invoice based on another invoice.
  - [`invoices.credit`](api/invoices-credit.md) — Credit an invoice completely.
  - [`invoices.creditPartially`](api/invoices-credit-partially.md) — Credit an invoice partially.
  - [`invoices.delete`](api/invoices-delete.md) — Delete an existing invoice. Only possible for draft invoices or the last booked invoice.
  - [`invoices.download`](api/invoices-download.md) — Download an invoice in a specific format.
  - [`invoices.draft`](api/invoices-draft.md) — Draft a new invoice.
  - [`invoices.info`](api/invoices-info.md) — Get details for a single invoice.
  - [`invoices.list`](api/invoices-list.md) — Get a list of invoices.
  - [`invoices.registerPayment`](api/invoices-register-payment.md) — Register a payment for an invoice.
  - [`invoices.removePayments`](api/invoices-remove-payments.md) — Marks an invoice as unpaid and removes all linked payments. This will also trigger a re-rendering of the invoice PDF.
  - [`invoices.send`](api/invoices-send.md) — Send an invoice via e-mail.
  - [`invoices.sendViaPeppol`](api/invoices-send-via-peppol.md) — Send an invoice via the Peppol network.
  - [`invoices.update`](api/invoices-update.md) — Update a draft invoice. Booked invoices cannot be updated.
  - [`invoices.updateBooked`](api/invoices-update-booked.md) — Update a booked invoice. Only available when editing booked invoices is allowed through the settings.
- **Payment Methods** ([`api/payment-methods.md`](api/payment-methods.md)) — \
  - [`paymentMethods.list`](api/payment-methods-list.md) — Get a list of payment methods.
- **Payment Terms** ([`api/payment-terms.md`](api/payment-terms.md)) — Payment terms are the conditions under which an invoice need to be paid.
  - [`paymentTerms.list`](api/payment-terms-list.md) — Get a list of available payment terms.
- **Subscriptions** ([`api/subscriptions.md`](api/subscriptions.md)) — \
  - [`subscriptions.create`](api/subscriptions-create.md) — Create a new subscription.
  - [`subscriptions.deactivate`](api/subscriptions-deactivate.md) — Deactivate a subscription.
  - [`subscriptions.info`](api/subscriptions-info.md) — Get details for a single subscription.
  - [`subscriptions.list`](api/subscriptions-list.md) — Get a list of subscriptions.
  - [`subscriptions.update`](api/subscriptions-update.md) — Update a subscription.
- **Tax Rates** ([`api/tax-rates.md`](api/tax-rates.md)) — Tax rates provide an overview of different taxation rates used to bill customers. Teamleader provides a default list of tax rates based on the country of residence of the company that’s using Teamleader. The end user also has the option to add additional tax rates.
  - [`taxRates.list`](api/tax-rates-list.md) — Get a list of available tax rates.
- **Withholding Tax Rates** ([`api/withholding-tax-rates.md`](api/withholding-tax-rates.md)) — Withholding tax rates provide an overview of different taxation rates used to bill customers. Teamleader provides a default list of tax rates based on the country of residence of the company that’s using Teamleader. The countries that use withholding tax rates are Italy and Spain.
  - [`withholdingTaxRates.list`](api/withholding-tax-rates-list.md) — Get a list of available withholding tax rates.

### Expenses

- **Bookkeeping Submissions** ([`api/bookkeeping-submissions.md`](api/bookkeeping-submissions.md)) — \
  - [`bookkeepingSubmissions.list`](api/bookkeeping-submissions-list.md) — List all bookkeeping submissions belonging to a specific financial document id and type
- **Expenses** ([`api/expenses.md`](api/expenses.md)) — \
  - [`expenses.list`](api/expenses-list.md) — Get a list of all expenses.
- **Incoming Credit Notes** ([`api/incoming-credit-notes.md`](api/incoming-credit-notes.md)) — Incoming credit notes are credit notes received from your suppliers. They can be added, approved, refused or sent to bookkeeping.
  - [`incomingCreditNotes.add`](api/incoming-credit-notes-add.md) — Adds an incoming credit note.
  - [`incomingCreditNotes.approve`](api/incoming-credit-notes-approve.md) — Approve an incoming credit note.
  - [`incomingCreditNotes.delete`](api/incoming-credit-notes-delete.md) — Deletes an incoming credit note.
  - [`incomingCreditNotes.info`](api/incoming-credit-notes-info.md) — Get details for a single incoming credit note.
  - [`incomingCreditNotes.listPayments`](api/incoming-credit-notes-list-payments.md) — List payments for an incoming credit note.
  - [`incomingCreditNotes.markAsPendingReview`](api/incoming-credit-notes-mark-as-pending-review.md) — Mark an incoming credit note as pending review.
  - [`incomingCreditNotes.refuse`](api/incoming-credit-notes-refuse.md) — Refuse an incoming credit note.
  - [`incomingCreditNotes.registerPayment`](api/incoming-credit-notes-register-payment.md) — Register a payment for an incoming credit note.
  - [`incomingCreditNotes.removePayment`](api/incoming-credit-notes-remove-payment.md) — Remove a payment from an incoming credit note.
  - [`incomingCreditNotes.sendToBookkeeping`](api/incoming-credit-notes-send-to-bookkeeping.md) — Send an incoming credit note to bookkeeping.
  - [`incomingCreditNotes.update`](api/incoming-credit-notes-update.md) — Updates an incoming credit note.
  - [`incomingCreditNotes.updatePayment`](api/incoming-credit-notes-update-payment.md) — Update a payment for an incoming credit note.
- **Incoming Invoices** ([`api/incoming-invoices.md`](api/incoming-invoices.md)) — Incoming invoices are invoices received from your suppliers. They can be added, approved, refused or sent to bookkeeping.
  - [`incomingInvoices.add`](api/incoming-invoices-add.md) — Adds an incoming invoice.
  - [`incomingInvoices.approve`](api/incoming-invoices-approve.md) — Approve an incoming invoice.
  - [`incomingInvoices.delete`](api/incoming-invoices-delete.md) — Deletes an incoming invoice.
  - [`incomingInvoices.info`](api/incoming-invoices-info.md) — Get details for a single incoming invoice.
  - [`incomingInvoices.listPayments`](api/incoming-invoices-list-payments.md) — List payments for an incoming invoice.
  - [`incomingInvoices.markAsPendingReview`](api/incoming-invoices-mark-as-pending-review.md) — Mark an incoming invoice as pending review.
  - [`incomingInvoices.refuse`](api/incoming-invoices-refuse.md) — Refuse an incoming invoice.
  - [`incomingInvoices.registerPayment`](api/incoming-invoices-register-payment.md) — Register a payment for an incoming invoice.
  - [`incomingInvoices.removePayment`](api/incoming-invoices-remove-payment.md) — Remove a payment from an incoming invoice.
  - [`incomingInvoices.sendToBookkeeping`](api/incoming-invoices-send-to-bookkeeping.md) — Send an incoming invoice to bookkeeping.
  - [`incomingInvoices.update`](api/incoming-invoices-update.md) — Updates an incoming invoice.
  - [`incomingInvoices.updatePayment`](api/incoming-invoices-update-payment.md) — Update a payment for an incoming invoice.
- **Receipts** ([`api/receipts.md`](api/receipts.md)) — Receipts are expenses for which you have a receipt, but no invoice. They can be added, approved, refused or sent to bookkeeping.
  - [`receipts.add`](api/receipts-add.md) — Adds a receipt.
  - [`receipts.approve`](api/receipts-approve.md) — Approve a receipt.
  - [`receipts.delete`](api/receipts-delete.md) — Deletes a receipt.
  - [`receipts.info`](api/receipts-info.md) — Get details for a single receipt.
  - [`receipts.listPayments`](api/receipts-list-payments.md) — List payments for a(n incoming) receipt.
  - [`receipts.markAsPendingReview`](api/receipts-mark-as-pending-review.md) — Mark a receipts as pending review.
  - [`receipts.refuse`](api/receipts-refuse.md) — Refuse a receipts.
  - [`receipts.registerPayment`](api/receipts-register-payment.md) — Register a payment for a(n incoming) receipt.
  - [`receipts.removePayment`](api/receipts-remove-payment.md) — Remove a payment from a receipt.
  - [`receipts.sendToBookkeeping`](api/receipts-send-to-bookkeeping.md) — Send a receipt to bookkeeping for processing.
  - [`receipts.update`](api/receipts-update.md) — Updates a receipt.
  - [`receipts.updatePayment`](api/receipts-update-payment.md) — Update a payment for a(n incoming) receipt.

### Products

- **Price Lists** ([`api/price-lists.md`](api/price-lists.md)) — \
  - [`priceLists.list`](api/price-lists-list.md) — Get a list of priceLists.
- **Product Categories** ([`api/product-categories.md`](api/product-categories.md)) — Product categories are used to group specific products. They can be linked to a ledger account, which is important for accounting.
  - [`productCategories.list`](api/product-categories-list.md) — Get a list of product categories.
- **Products** ([`api/products.md`](api/products.md)) — Required scopes: products
  - [`products.add`](api/products-add.md) — Add a new product.
  - [`products.delete`](api/products-delete.md) — Delete a product.
  - [`products.info`](api/products-info.md) — Get details for a single product.
  - [`products.list`](api/products-list.md) — Get a list of products.
  - [`products.update`](api/products-update.md) — Update a product.
- **Units of Measure** ([`api/units-of-measure.md`](api/units-of-measure.md)) — \
  - [`unitsOfMeasure.list`](api/units-of-measure-list.md) — Get a list of units of measure.

### Legacy Projects

- **Legacy Milestones** ([`api/legacy-milestones.md`](api/legacy-milestones.md)) — Every projects consists of one or more milestones which are limited in time and budget. Budget is however not included in this endpoints (yet).
  - [`milestones.close`](api/legacy-milestones-close.md) — Close a milestone. All open tasks will be closed, open meetings will remain open. Closing the last open milestone will also close the project.
  - [`milestones.create`](api/legacy-milestones-create.md) — Create a new milestone.
  - [`milestones.delete`](api/legacy-milestones-delete.md) — Delete a milestone.
  - [`milestones.info`](api/legacy-milestones-info.md) — Get details for a single milestone.
  - [`milestones.list`](api/legacy-milestones-list.md) — Get a list of project milestones.
  - [`milestones.open`](api/legacy-milestones-open.md) — (Re)open a milestone. If the milestone's project is closed, the project will be reopened.
  - [`milestones.update`](api/legacy-milestones-update.md) — Update a milestone.
- **Legacy Projects** ([`api/legacy-projects.md`](api/legacy-projects.md)) — Projects allow users to work together as a team on a single project. They consist of one or more milestones, have one or more participants and are limited in time and budget.
  - [`projects.addParticipant`](api/legacy-projects-add-participant.md) — Add a participant to a project.
  - [`projects.close`](api/legacy-projects-close.md) — Closes a project, all its phases, and all tasks within each phase (but not meetings).
  - [`projects.create`](api/legacy-projects-create.md) — Create a new project.
  - [`projects.delete`](api/legacy-projects-delete.md) — Delete a project.
  - [`projects.info`](api/legacy-projects-info.md) — Get details for a single project.
  - [`projects.list`](api/legacy-projects-list.md) — Get a list of projects.
  - [`projects.reopen`](api/legacy-projects-reopen.md) — Reopens a project, changing its status to "active".
  - [`projects.update`](api/legacy-projects-update.md) — Update a project.
  - [`projects.updateParticipant`](api/legacy-projects-update-participant.md) — Update a participant's role for a project.

### New Projects

- **External parties** ([`api/external-parties.md`](api/external-parties.md)) — &gt; An external party is a contact or company that is added to a project with an optional function and/or sub function.
  - [`externalParties.addToProject`](api/nextgen-projects-external-parties-add-to-project.md) — Add an external party to a project.
  - [`externalParties.delete`](api/nextgen-projects-external-parties-delete.md) — Delete an external party.
  - [`externalParties.update`](api/nextgen-projects-external-parties-update.md) — Update an external party.
- **Groups** ([`api/groups.md`](api/groups.md)) — Required scopes: projects
  - [`projectGroups.assign`](api/project-groups-assign.md) — Assign a user or a team to a group.
  - [`projectGroups.create`](api/project-groups-create.md) — Create a group. All properties except for title and project_id are optional.
  - [`projectGroups.delete`](api/project-groups-delete.md) — Delete a group.
  - [`projectGroups.duplicate`](api/project-groups-duplicate.md) — Duplicate a group and its entities, without any time trackings.
  - [`projectGroups.info`](api/project-groups-info.md) — Returns all the information for one group.
  - [`projectGroups.list`](api/project-groups-list.md) — Lists all the groups that match the optional filters provided.
  - [`projectGroups.unassign`](api/project-groups-unassign.md) — Unassign a user or a team from a group.
  - [`projectGroups.update`](api/project-groups-update.md) — Update a group. All attributes except for id are optional. Providing null will clear that value from the project (for properties that are nullable).
- **Materials** ([`api/materials.md`](api/materials.md)) — Required scopes: projects
  - [`materials.assign`](api/nextgen-projects-materials-assign.md) — Assign a user or a team to a material.
  - [`materials.create`](api/nextgen-projects-materials-create.md) — Create a material. All properties except for title and project_id are optional.
  - [`materials.delete`](api/nextgen-projects-materials-delete.md) — Delete a material.
  - [`materials.duplicate`](api/nextgen-projects-materials-duplicate.md) — Duplicate a material.
  - [`materials.info`](api/nextgen-projects-materials-info.md) — Returns all the information for one material.
  - [`materials.list`](api/nextgen-projects-materials-list.md) — Lists all the materials that match the optional filters provided.
  - [`materials.unassign`](api/nextgen-projects-materials-unassign.md) — Unassign a user or a team from a material.
  - [`materials.update`](api/nextgen-projects-materials-update.md) — Update a material. All attributes except for id are optional. Providing null will clear that value from the project (for properties that are nullable).
- **Project lines** ([`api/project-lines.md`](api/project-lines.md)) — &gt; A project line can be a group, a task, or a material.
  - [`projectLines.addToGroup`](api/project-lines-add-to-group.md) — Add an existing task or material to a group.
  - [`projectLines.list`](api/project-lines-list.md) — All line types (tasks, materials, groups) can be side-loaded.
  - [`projectLines.removeFromGroup`](api/project-lines-remove-from-group.md) — Remove a task or material from the group it is currently in.
- **Projects** ([`api/projects.md`](api/projects.md)) — &gt; This is the documentation of the new projects module. See the Legacy Projects documentation for the endpoints concerning our legacy projects module.
  - [`projects.addCustomer`](api/nextgen-projects-add-customer.md) — Add a customer to the project. Doesn't fail if the customer was already added.
  - [`projects.addDeal`](api/nextgen-projects-add-deal.md) — Add a deal to the project. Doesn't fail if the deal was already added.
  - [`projects.addOwner`](api/nextgen-projects-add-owner.md) — Add a user as owner. Doesn't fail if the user was already added.
  - [`projects.addQuotation`](api/nextgen-projects-add-quotation.md) — Add a quotation to the project. Doesn't fail if the quotation was already added.
  - [`projects.assign`](api/nextgen-projects-assign.md) — Assign a user or a team to a project.
  - [`projects.close`](api/nextgen-projects-close.md) — Mark a project as closed.
  - [`projects.create`](api/nextgen-projects-create.md) — Create a new project. Only title is required. All the other fields are optional.
  - [`projects.delete`](api/nextgen-projects-delete.md) — Delete a project.
  - [`projects.duplicate`](api/nextgen-projects-duplicate.md) — Duplicate a project.
  - [`projects.info`](api/nextgen-projects-info.md) — Returns all the information of a single project.
  - [`projects.list`](api/nextgen-projects-list.md) — Lists all projects that match the optional filters provided.
  - [`projects.removeCustomer`](api/nextgen-projects-remove-customer.md) — Remove a customer from the project. Doesn't fail if the customer was not added.
  - [`projects.removeDeal`](api/nextgen-projects-remove-deal.md) — Remove a deal from the project. Doesn't fail if the deal was already removed.
  - [`projects.removeOwner`](api/nextgen-projects-remove-owner.md) — Remove a user as owner. Doesn't fail if the user wasn't linked.
  - [`projects.removeQuotation`](api/nextgen-projects-remove-quotation.md) — Remove a quotation from the project. Doesn't fail if the quotation was already removed.
  - [`projects.reopen`](api/nextgen-projects-reopen.md) — Reopen a closed project.
  - [`projects.unassign`](api/nextgen-projects-unassign.md) — Unassign a user or a team from a project.
  - [`projects.update`](api/nextgen-projects-update.md) — Update a project. All attributes except for id are optional. Providing null will clear that value from the project (for properties that are nullable).
- **Tasks** ([`api/projects-v-2-tasks.md`](api/projects-v-2-tasks.md)) — &gt; These endpoints are for (new) project tasks. For documentation on endpoints for tasks not linked to a project, see Tasks below.
  - [`tasks.assign`](api/nextgen-projects-tasks-assign.md) — Assign a user or a team to a task.
  - [`tasks.create`](api/nextgen-projects-tasks-create.md) — Create a task. All properties except for title and project_id are optional.
  - [`tasks.delete`](api/nextgen-projects-tasks-delete.md) — Delete a task.
  - [`tasks.duplicate`](api/nextgen-projects-tasks-duplicate.md) — Duplicate a task, without its time trackings.
  - [`tasks.info`](api/nextgen-projects-tasks-info.md) — Returns all the information for one task.
  - [`tasks.list`](api/nextgen-projects-tasks-list.md) — Lists all the tasks that match the optional filters provided.
  - [`tasks.unassign`](api/nextgen-projects-tasks-unassign.md) — Unassign a user or a team from a task.
  - [`tasks.update`](api/nextgen-projects-tasks-update.md) — Update a task. All attributes except for id are optional. Providing null will clear that value from the project (for properties that are nullable).

### Planning

- **Plannable items** ([`api/plannable-items.md`](api/plannable-items.md)) — \
  - [`plannableItems.info`](api/plannable-items-info.md) — Returns the info for a single plannable item, either by ID or source if the ID is unknown.
  - [`plannableItems.list`](api/plannable-items-list.md) — Lists all plannable items that match the optional filters provided.
- **Reservations** ([`api/reservations.md`](api/reservations.md)) — \
  - [`reservations.create`](api/reservations-create.md) — Create a new reservation.
  - [`reservations.delete`](api/reservations-delete.md) — Delete a reservation.
  - [`reservations.list`](api/reservations-list.md) — Lists all reservations that match the optional filters provided.
  - [`reservations.update`](api/reservations-update.md) — Update an existing reservation.
- **User availability** ([`api/user-availability.md`](api/user-availability.md)) — \
  - [`userAvailability.daily`](api/user-availability-daily.md) — Returns the daily availability for all users.
  - [`userAvailability.total`](api/user-availability-total.md) — Returns the total availability for all users.

### Tasks

- **Tasks** ([`api/tasks.md`](api/tasks.md)) — \
  - [`tasks.complete`](api/tasks-complete.md) — Mark a task as complete.
  - [`tasks.create`](api/tasks-create.md) — Create a new task.
  - [`tasks.delete`](api/tasks-delete.md) — Delete a task.
  - [`tasks.info`](api/tasks-info.md) — Get information about a task.
  - [`tasks.list`](api/tasks-list.md) — Get a list of tasks.
  - [`tasks.reopen`](api/tasks-reopen.md) — Reopen a task that had been marked as complete.
  - [`tasks.schedule`](api/tasks-schedule.md) — Schedule a task in your calendar.
  - [`tasks.update`](api/tasks-update.md) — Update a task.

### Time Tracking

- **Time Tracking** ([`api/time-tracking.md`](api/time-tracking.md)) — Time tracking allows users to record time spent on tasks or projects and the type of work. You are able to follow-up on the budgets of your projects and eventually you are able to invoice the billable time.
  - [`timeTracking.add`](api/time-tracking-add.md) — Add tracked time.
  - [`timeTracking.delete`](api/time-tracking-delete.md) — Delete a tracked time.
  - [`timeTracking.info`](api/time-tracking-info.md) — Get information about tracked time.
  - [`timeTracking.list`](api/time-tracking-list.md) — Get a list of tracked time.
  - [`timeTracking.resume`](api/time-tracking-resume.md) — Start a new timer based on previously tracked time.
  - [`timeTracking.update`](api/time-tracking-update.md) — Update tracked time.
- **Timers** ([`api/timers.md`](api/timers.md)) — Timers are an easy way to track time. You can start, stop or resume a timer any time. However, only one timer can run simultaneously per user. Every action will result in the creation or update of a time tracking.
  - [`timers.current`](api/timers-current.md) — Get the current running timer.
  - [`timers.start`](api/timers-start.md) — Start a new timer.
  - [`timers.stop`](api/timers-stop.md) — Stop the current timer. This will add a new time tracking in the background.
  - [`timers.update`](api/timers-update.md) — Update the current timer. Only possible if there is a timer running.

### Tickets

- **Ticket Status** ([`api/ticket-status.md`](api/ticket-status.md)) — \
  - [`ticketStatus.list`](api/ticket-status-list.md) — Get a list of ticket statuses.
- **Tickets** ([`api/tickets.md`](api/tickets.md)) — Required scopes: tickets
  - [`tickets.addInternalMessage`](api/tickets-add-internal-message.md) — Adds an internal message to a ticket.
  - [`tickets.addReply`](api/tickets-add-reply.md) — Adds a message to a ticket.
  - [`tickets.create`](api/tickets-create.md) — Create a ticket.
  - [`tickets.getMessage`](api/tickets-get-message.md) — Gets the ticket message.
  - [`tickets.importMessage`](api/tickets-import-message.md) — Imports an existing message to a ticket.
  - [`tickets.info`](api/tickets-info.md) — Get details for a single ticket.
  - [`tickets.list`](api/tickets-list.md) — Get a list of tickets.
  - [`tickets.listMessages`](api/tickets-list-messages.md) — Lists messages of a ticket.
  - [`tickets.update`](api/tickets-update.md) — Update a ticket.

### Files

- **Files** ([`api/files.md`](api/files.md)) — \
  - [`files.delete`](api/files-delete.md) — Delete a file.
  - [`files.download`](api/files-download.md) — Request the download link for a file.
  - [`files.info`](api/files-info.md) — Get details for a single file.
  - [`files.list`](api/files-list.md) — Get a list of files.
  - [`files.upload`](api/files-upload.md) — Request the upload link for a file.

### Templates

- **Mail Templates** ([`api/mail-templates.md`](api/mail-templates.md)) — \
  - [`mailTemplates.list`](api/mail-templates-list.md) — Get a list of all mail templates.

### Other

- **Accounts** ([`api/accounts.md`](api/accounts.md)) — \
  - [`accounts.projects-v2-status`](api/accounts-projects-v-2-status.md) — Fetch which version of Projects the account is using.
- **Cloud Platforms** ([`api/cloud-platforms.md`](api/cloud-platforms.md)) — \
  - [`cloudPlatforms.url`](api/cloud-platforms-url.md) — Fetch cloudPlatform url for type and id.
- **Migrating** ([`api/migrating.md`](api/migrating.md)) — ⚠️ WARNING! These endpoints are not guaranteed to stay backwards compatible.
  - [`migrate.activityType`](api/migrate-activity-type.md) — Translates meeting, call and task into their respective activity type UUID.
  - [`migrate.id`](api/migrate-id.md) — Translates an ID from the deprecated API into a new UUID.
  - [`migrate.taxRate`](api/migrate-tax-rate.md) — Translates tax rates from the deprecated API into a new UUID tax rate.
- **Webhooks** ([`api/webhooks.md`](api/webhooks.md)) — \
  - [`webhooks.list`](api/webhooks-list.md) — List registered webhooks ordered by URL.
  - [`webhooks.register`](api/webhooks-register.md) — Register a new webhook.
  - [`webhooks.unregister`](api/webhooks-unregister.md) — Unregister a webhook.
