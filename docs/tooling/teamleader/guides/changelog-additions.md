---
url: https://developer.focus.teamleader.eu/docs/changelog/additions
title: Additions | Teamleader Developers
words: 4582
---
- [](/)
- Changes & Upgrades
- Additions

On this page

Additions

We list all backwards-compatible additions here. These are currently available in all published versions. (There is also a list of backwards-incompatible upgrades available, but those only apply if you upgrade your API version.)

📅 Year 2026​

* * *

June 2026​

- We added the notes.delete endpoint. We added the projectid parameter to the tickets.create and tickets.update endpoints. Accounts using legacy projects link a ticket to a milestone via milestoneid, while accounts using the new projects link a ticket to a project via projectid. A ticket can be linked to either a milestoneid or a project_id, but not both.

May 2026​

- We added the purchaseordernumber parameter to the deals.create and deals.update endpoints.
- We added the projectids, worktype_ids, and term filters to the reservations.list endpoint.
- We added the calls.delete endpoint.
- Add initialtimetracked, initialprice, initialcost, initialamountbilled, and initialamountpaid as nullable fields to projects.update.

April 2026​

- Add parentfixedprice as a valid billingmethod for materials.create and materials.update. Also add them as a possible value for billingmethod in materials.info and materials.list.
- The meetings.list endpoint now supports a groupid filter to filter meetings by their nextgen project group. This filter cannot be combined with milestoneid.
- We added nextgenTask to the available relatesto types on timeTracking.info and timeTracking.list. For accounts with access to nextgen projects, the legacy project entry is no longer included in relatesto when a nextgenProject entry is present.
- We added the expectedpaymentmethod parameter to the invoices.updateBooked endpoint. When method is sepadirectdebit, reference is required.
- The meetings.schedule and meetings.update endpoints now document the address location type for inline addresses. The previously documented customLocation type has been replaced with address, which accepts an inline address object.
- We corrected the meetings.info documentation: the onlinemeetingroom property has been renamed to customermeetingroom to match the actual API response.
- We added the created_by parameters to the meetings.info and meetings.list endpoints.
- Added meeting as a type to the notes.list response & to the notes.create request.

March 2026​

- We added the projectid and groupid parameters to the meetings.schedule and meetings.update endpoints.
- We added the purchaseordernumber and delivery_information parameters to the subscriptions.info and subscriptions.list endpoint responses.
- We added the purchaseordernumber and delivery_information parameters to the subscriptions.create and subscriptions.update endpoints.
- Added subscription to the invoices.list response. When an invoice was generated from a subscription, the response includes {"type": "subscription", "id": "<uuid>"}, otherwise null.

February 2026​

- We added project, group, and purchase_price to the line items on the orders.info endpoint.
- We added nextgenProject and nextgenProjectGroup to the relates_to filter on timeTracking.list.
- Added order_number to orders.list and orders.info.
- We added quantity_estimated to materials.create, materials.update, materials.list and materials.info.
- We added the payment_status property to the incomingInvoices.info, incomingCreditNotes.info and receipts.info endpoint responses.
- We added the paymentstatus, paymentamount and paid_at parameters to the expenses.list endpoint response.
- We added new endpoints to manage payments associated to expense documents:
  
  - incomingCreditNote.listPayments: Filter and list payments for an incoming credit note.
  - incomingCreditNote.registerPayment: Register a payment to an incoming credit note.
  - incomingCreditNote.removePayment: Remove a payment from an incoming credit note.
  - incomingCreditNote.updatePayment: Update a payment from an incoming credit note.
  - incomingInvoice.listPayments: Filter and list payments for an incoming invoice.
  - incomingInvoice.registerPayment: Register a payment to an incoming invoice.
  - incomingInvoice.removePayment: Remove a payment from an incoming invoice.
  - incomingInvoice.updatePayment: Update a payment from an incoming invoice.
  - receipts.listPayments: Filter and list payments for a receipt.
  - receipts.registerPayment: Register a payment to a receipt.
  - receipts.removePayment: Remove a payment from a receipt.
  - receipts.updatePayment: Update a payment from a receipt.
- We added group on meetings.info and meetings.list endpoints.
- We added new filters to the expenses.list endpoint:
  
  - department_ids: Filter expenses by one or more department IDs
  - supplier: Filter expenses by a specific supplier (company or contact)
  - paid_at: Filter expenses by payment date using date range operators
  - payment_statuses: Filter expenses by payment status (paid or unpaid)
  
  We also added the sort parameter to allow sorting by documentdate, duedate, or supplier_name.

January 2026​

- We added the customFieldDefinitions.create endpoint.
- We added a new subject type temporary on files.upload.
- We added the contacts.uploadAvatar and companies.uploadLogo endpoints.
- We added peppol_status on invoices.info and creditNotes.info endpoints.
- We added support for price_list on companies.list and contacts.list as an optional includes.
- We added the marketingmailsconsent property on the companies.list & contacts.list endpoints. We added the marketingmailsconsent filter on the companies.list & contacts.list endpoints.
- We added invoice.peppolSubmissionSucceeded, invoice.peppolSubmissionFailed, creditNote.peppolSubmissionSucceeded and creditNote.peppolSubmissionFailed to the available webhooks list.

📅 Year 2025​

* * *

December 2025​

- We added peppol as a possible sending_methods value on the subscriptions.info, subscriptions.create and subscriptions.update endpoints.
- We added the delivery_date property on the invoices.info and invoices.list endpoints.
- We added delivery_date to invoices.draft and invoices.update.
- We added created_at to subscriptions.list and subscriptions.info.

October 2025​

- We added nationalidentificationnumber to the filters on companies.list.
- We added the /userAvailability.daily endpoint.
- We added the /userAvailability.total endpoint.
- We added the /reservations.delete endpoint.
- We added the /reservations.update endpoint.
- We added the /reservations.create endpoint.
- We added the /reservations.list endpoint.
- We added text to the response of quotations.info.
- We added the /plannableItems.info endpoint.
- We added the /plannableItems.list endpoint.

September 2025​

- We added nextgenTask to the available subject types on timeTracking.add.
- We added receipt.added, receipt.updated, receipt.deleted, receipt.approved, receipt.refused, receipt.bookkeepingSubmissionSucceeded, and receipt.bookkeepingSubmissionFailed to the available webhooks list.
- We added incomingInvoice.added, incomingInvoice.updated, incomingInvoice.deleted, incomingInvoice.approved, incomingInvoice.refused, incomingInvoice.bookkeepingSubmissionSucceeded, and incomingInvoice.bookkeepingSubmissionFailed to the available webhooks list.
- We added incomingCreditNote.added, incomingCreditNote.updated, incomingCreditNote.deleted, incomingCreditNote.approved, incomingCreditNote.refused, incomingCreditNote.bookkeepingSubmissionSucceeded, and incomingCreditNote.bookkeepingSubmissionFailed to the available webhooks list.
- We added the /creditNotes.sendViaPeppol endpoint.
- We added the /invoices.sendViaPeppol endpoint.
- We added the /receipts.{add, approve, delete, info, markAsPendingReview, refuse, sendToBookkeeping, update} endpoints.
- We added the /incomingInvoices.{add, approve, delete, info, markAsPendingReview, refuse, sendToBookkeeping, update} endpoints.
- We added the /incomingCreditNotes.{add, approve, delete, info, markAsPendingReview, refuse, sendToBookkeeping, update} endpoints.
- We added the /bookkeepingSubmissions.list endpoint.
- We added the /expenses.list endpoint.

June 2025​

- We added the projects-v2/externalParties.addToProject, projects-v2/externalParties.update and projects-v2/externalParties.delete endpoints.

May 2025​

- We added the orders.info and orders.list endpoints.

April 2025​

- We added created_at to the response of meetings.info.
- We added customer sorting to projects-v2/projects.list.

February 2025​

- We added custom_fields to projects-v2/tasks.info.
- We added nextgenTask.completed, nextgenTask.created, nextgenTask.deleted and nextgenTask.updated to supported Webhook types.

January 2025​

- We added ubl/peppolbis3 to the list of allowed formats in invoices.download.
- We added periodicity to the quotation line items in quotations.info, quotations.create and quotations.update.

📅 Year 2024​

* * *

December 2024​

- We added initialtimetracked, initialprice, initialcost, initialamountbilled, and initialamountpaid to projects-v2/projects.create. "Initial" values can be used when importing project data.
- We added project as a note type on notes.list. project is a legacy project. For new projects, use nextgenProject.

November 2024​

- We added name to quotations.info and quotations.list.
- We added paymentmethod property to invoicegeneration object on subscription.info, subscriptions.create and subscriptions.update endpoints.

October 2024​

- We added preferred_currency to the companies.add and companies.update endpoints.

September 2024​

- We added willbeautomaticallyswitchedon to the accounts.projects-v2-status endpoint.
- The property pipeline on deals.list has been documented as resource.
- We added pipeline to the deals.info endpoint.
- We added currencyexchangerate to the deals.info and deals.list endpoints.
- We added currency to the deals.create and deals.update endpoints.
- We added suppliers as an optional include to the products.info endpoint.
- We added hourly_rate to the timeTracking.list and timeTracking.info endpoints.

August 2024​

- We added workorderid to the meetings.schedule endpoint.
- We added project_id to the tasks.update endpoint.
- We added the accounts/projects-v2-status endpoint to check the Projects version of an account.
- We added the legacy_project optional include to projects-v2/projects.list and projects-v2/projects.info.
- The tickets.list endpoint can now filter tickets by project ids.
- We added billing_info to timeTracking.list endpoint.
- We added the users.getWeekSchedule endpoint.
- We added milestone_id to the tickets.create and tickets.update endpoints.
- We added milestone and project to the tickets.info and tickets.list endpoints.
- We added reference to the tickets.info and tickets.list endpoints.
- We added workOrder to the meetings.info endpoint.

July 2024​

- We added ticket to the tickets.getMessage endpoint.
- We added attachments to the emailTracking.list endpoint.
- We added attachments to the emailTracking.create endpoint.
- We added ticket.created, ticket.updated, ticket.closed, ticket.reopened and ticket.deleted to supported Webhook types.
- We added ticketMessage.added to supported Webhook types.
- We added custom_fields as an optional include to contacts.list, companies.list and deals.list endpoints.
- We added custom_fields as an optional include to projects-v2/projects.list endpoint.

June 2024​

- We added tax to the products.info endpoint.
- We added the daysOff.import and daysOff.bulkDelete endpoints.
- We added the dayOffTypes.create, dayOffTypes.update and dayOffTypes.delete endpoints.
- We added the closingDays.add and closingDays.delete endpoints.

May 2024​

- We added purchaseordernumber to projects-v2/projects.info, projects-v2/projects.create and projects-v2/projects.update.
- We added product.updated and product.deleted to supported Webhook types.

April 2024​

- The meeting property project returned in meetings.list and meetings.info can now be an id of a nextgenProject as well.

February 2024​

- We added the tickets.importMessage, tickets.addReply and tickets.addInternalMessage endpoints.
- We now support ticket as a valid type on the cloudPlatforms.url endpoint.
- We added the initial_reply to tickets.create endpoint.
- We added the emailTracking.list endpoint.
- We added deal_id to calls.add and calls.update.
- We added deal to calls.list and calls.info.
- We added task.created, task.updated, task.completed, task.deleted types to supported Webhook types.
- We added contact.updatedLinkToCompany to supported Webhook types.
- We added includes to the companies.info endpoint.
- We added includes to the users.info endpoint.
- We added includes to the timeTracking.list and timeTracking.info endpoints.

January 2024​

- We renamed tasktype and tasktypeid to worktype and worktypeid in projects-v2/tasks.list, projects-v2/tasks.info, projects-v2/tasks.create and projects-v2/tasks.update. The old names are still supported, but deprecated.
- We replaced tasktyperate with worktyperate in projects-v2/tasks.list, projects-v2/tasks.info, projects-v2/tasks.create and projects-v2/tasks.update. tasktyperate was never used.
- We added project_id to the tasks.create endpoint.
- We added the users.listDaysOff and dayOffTypes.list endpoints.
- We added ticket as a supported file subject on files.list and files.upload.
- We added emailverificationstatus to users.me.
- We added ticket endpoints tickets.list, tickets.info, tickets.create and tickets.update.
- We added endpoints for ticket messages tickets.listMessages and tickets.getMessage.
- We added the ticketStatus.list endpoint.
- We added ticket_id to tasks.create,tasks.update, tasks.list and tasks.info.

📅 Year 2023​

* * *

December 2023​

- The dealPhases.list endpoint can now filter phases by pipeline id.
- We added actions, requiresattentionafter and probability to dealPhases.list.
- We added the dealPhases.create endpoint.
- We added the dealPhases.update endpoint.
- We added the dealPhases.duplicate endpoint.
- We added the dealPhases.move endpoint.
- We added the dealPhases.delete endpoint.
- We added the dealPipelines.list endpoint.
- We added the dealPipelines.create endpoint.
- We added the dealPipelines.update endpoint.
- We added the dealPipelines.markAsDefault endpoint.
- We added the dealPipelines.duplicate endpoint.
- We added the dealPipelines.delete endpoint.
- The deals.list endpoint can now filter deals by pipeline ids.
- We added pipeline to deals.list.
- We now return the default payment term id in paymentTerms.list meta information.
- We added the meetings.createReport endpoint.
- We now return the user's team(s) in users.info and users.list endpoints.
- We added nextgenProject as a subject type to files.upload, files.list and files.info.
- The /customFieldDefinitions.list endpoint can now filter custom field definitions by context and ids.
- We added nextgenProject as a subject type to emailTracking.create.
- We added nextgenProject as a subject type to notes.create and notes.list.
- We added nextgenProject types to supported Webhook types.
- We added the closingDays.list endpoint.

November 2023​

- We added the calls.add, calls.list, calls.info and calls.complete endpoints.
- We added the callOutcomes.list endpoint.
- We added call.added, call.updated and call.deleted types to supported Webhook types.
- We added the meetings.schedule, meetings.update, meetings.complete and meetings.delete endpoints.
- We added meeting.created, meeting.updated and meeting.deleted types to supported Webhook types.
- The meetings.info and meetings.list endpoints now return the meeting recurrence id for recurring meetings.
- The meetings.list endpoint can now filter meetings by recurrence id.
- We added custom_fields to projects-v2/projects.info, projects-v2/projects.create and projects-v2/projects.update
- We added call.completed and meeting.completed types to supported Webhook types.
- We added the notes.list, notes.create and notes.update endpoints.
- We added the emailTracking.create endpoint.

October 2023​

- We added late_fees to invoices.info and invoices.list.
- We added the invoices.updateBooked endpoint.

September 2023​

- We added the meetings.list and meetings.info endpoints.
- We added timeestimated and amountunbilled to projects-v2/projects.list.
- We added sorting on amountbilled, amountpaid, amountunbilled, externalbudgetspent, externalbudget, internalbudget and timeestimated to projects-v2/projects.list.

August 2023​

- We added quotation as a type for cloudPlatforms.url.
- We added currency to invoices.info, subscriptions.info, quotations.info and creditNotes.info.
- We added product_category to products.info.
- We added the invoices.creditPartially endpoint.
- We added a paymentMethods.list endpoint.
- We added paymentmethodid to invoices.registerPayment.
- We added the cloudPlatforms.url endpoint.
- We added expiry to quotations.create, quotations.update, quotations.info and quotations.list.
- We added expired as possible value for a quotation status.
- We added subscription.add, subscription.updated, subscription.deleted, subscription.deactivated types to supported Webhook types

July 2023​

- We added status to the filters on contacts.list.
- We added status to the filters on companies.list.
- We added a mailTemplates.list endpoint.
- We added a unitsOfMeasure.list endpoint.
- We added unit on grouped_lines to invoices.info, subscriptions.info, quotations.info and creditNotes.info
- We added unitofmeasureid on groupedlines to invoices.draft, invoices.update, subscriptions.create, subscriptions.update, quotations.create and quotations.update.
- We added the invoices.send endpoint.
- 🎉 We added all endpoints for the New Projects module: projects-v2/projects, projects-v2/projectLines, projects-v2/projectGroups, projects-v2/tasks, and projects-v2/materials. 🎉
- We added billing_info on timetrackings.info.
- We added invoice_number to the filters on invoices.list.
- We added the priceLists.list endpoint.
- We added pricelistprices to products.info and products.add.
- We added stock and configuration to products.list, products.info and products.add.
- We added departmentid, productcategoryid and taxrate_id to products.add.
- We added the products.update endpoint.
- We added the products.delete endpoint.
- We added added_at to products.info.
- We added updated_at to products.info and products.list.
- We added custom_fields to products.add and products.update.
- We added selling_price to products.update.
- We added unitofmeasure_id to products.add and products.update.
- We added unit to products.info and products.list.
- We added the currencies.exchangeRates endpoint.
- We added document_template to subscriptions.info.
- We added documenttemplateid to subscriptions.create and subscriptions.update.
- We added deal as a link type to events.create and events.update.

June 2023​

- We enhanced the existing filter on term in users.list. In addition to returning the users who have the term in their first name, last name or email address, we now also return those users who have the term in their function.
- We added the commercialDiscounts.list endpoint.
- We added the documentTemplates.list endpoint.

May 2023​

- We added teamleadid to the filters on teams.list.
- We added sorting on firstname, lastname, email and function to users.list.
- We added creditNote.updated, creditNote.deleted, creditNote.sent types to supported Webhook types.

April 2023​

- We added ids to the filters on teams.list.

March 2023​

- We added customField,timeTracking and department as allowed types on migrate.id.
- We added creditnotedatebefore and creditnotedateafter to the filters on creditNotes.list.
- We added ids to the filters on timeTrackings.list.
- We added term to the filters on teams.list.
- The property gender has been expanded with additional values on:
  
  - contacts.create
  - contacts.info
  - contacts.list
  - contacts.update

February 2023​

- Product custom fields are now included as custom_fields on products.info.

January 2023​

- We added user_id to timeTracking.add.
- We updated the HTTP verb for all endpoints to POST. Using GET for .list, .info and migrate endpoints is still possible, but deprecated.

📅 Year 2022​

* * *

December 2022​

- We added secondary_position and division to the related company data on contacts.info.

November 2022​

- We added invoice_date as a sort field on invoices.list.

October 2022​

- We added defaultdepartment and createdat to the sorting options on departments.list.

September 2022​

- We added project_id to invoices.draft and invoices.update.
- We added paymentterm, groupedlines and invoice_generation to subscriptions.info.
- We added startson and endson to subscriptions.list and subscriptions.info.
- We added subscriptions.create and subscriptions.update.
- We added the quotations.send endpoint.
- We clarified how the optional folder argument for the files.upload endpoint works.

August 2022​

- We added invoices.removePayments.
- We added department_id to the filters on subscriptions.list.
- We added tags to companies.update.

July 2022​

- We added product and project as subject type for files.list.
- We added priority to tasks.list and tasks.info.
- We added vat_number to the filters on companies.list.

June 2022​

- We added files.list, files.info, files.download, files.upload and files.delete.

May 2022​

- We added status as a sort field on subscriptions.list.

April 2022​

- We added the contacts.updateCompanyLink endpoint.
- We added the subscriptions.deactivate endpoint.

March 2022​

- We added the subscriptions.info and subscriptions.list endpoints.

February 2022​

- We added customer to the filters on invoices.list.
- We added a subscription filter to invoices.list.
- We added project to invoices.list and invoices.info.

📅 Year 2021​

* * *

December 2021​

- We added onholdsince to invoices.info.
- We added deal_id to the filters on invoices.list.
- We added project_id to the filters on invoices.list.
- We added invoicedatebefore and invoicedateafter to the filters on invoices.list.
- We added an updated_since filter to projects.list.

November 2021​

- We added status on companies.list and companies.info.
- We added status on contacts.list and contacts.info.
- We added ids to the filters on creditNotes.list.
- We added invoiceid and projectid to the filters on creditNotes.list.
- We added discounts to creditNotes.info.
- We added added_at on products.list, and tasks.list.
- We added created_at on projects.list.

September 2021​

- We added sort to timeTracking.list.
- We added teams.list.

June 2021​

- We added description on products.add.
- We added title on tasks.info and tasks.list.
- We added term to the filters on workTypes.list.
- We added started_on to timeTracking.update and timeTracking.add.
- We added the quotations.delete endpoint.
- We changed the behaviour of the started\before, started\after, ended\before, and ended\after filters on timeTracking.list to be inclusive. So "started after midnight" will include time tracking that started exactly on midnight.
- We added status to quotations.info and quotations.list.

March 2021​

- Updated the migrate.id endpoint for type quotation to return the first or accepted quotation uuid for given deal id.

January 2021​

- We added deal on invoices.list and invoices.info.

📅 Year 2020​

* * *

October 2020​

- We added title as a sort field on projects.list.
- We added arealeveltwo to the .list and .info responses for company, contact and department addresses.
- We added arealeveltwo_id to the .add and .update calls for companies and contacts.
- We added starts_on to milestones.create, milestones.update, milestones.list, milestones.info, and projects.create (in the milestone context).
- We added budget on projects.update.
- We added customer on projects.update.
- We added starts_on and desc to the sort options on milestones.list.
- We added file to invoices.list and invoices.info.
- We added quotations.accept endpoint.

September 2020​

- We added the milestones.close and milestones.open endpoints.
- We added the createdat and updatedat fields to quotations.list and quotations.info. Please note that these fields are nullable and will only be filled in for future quotations.
- We added the discounts field to quotations.info.
- We added the purchase_price field to quotations.list, quotations.info, quotations.create and quotations.update.
- We added projects.close and projects.reopen endpoints.

August 2020​

- We added a filter done to events.list.
- We added the currencyexchangerate to invoices.list.
- We added the product_id property to quotations.create, quotations.update, invoices.draft and invoices.update.

July 2020​

- We added quotations.list, quotations.create and quotations.update.

June 2020​

- We added the emails property to departments.list.
- We added the status property to departments.info and departments.list, this property is also available as a filter on departments.list.
- We added a filter scheduled to tasks.list.
- We added the total field to quotations.info.

May 2020​

- We no longer require all fields in projects.update, only the id remains required.
- We added the purchaseordernumber field to projects.info, projects.create, and projects.update.

April 2020​

- We added the description field to milestones.info, milestones.create, and milestones.update.
- We added the propagatedatechanges property to milestones.update. This allows propagating the new due date difference to the due date of all open tasks of that milestone, and recursively to all depending milestones.
- We added the vat_number property to contacts.info.
- Project custom fields are now included as custom_fields on projects.info. They can also be added and updated through the projects.create / projects.update endpoints.

March 2020​

- We added actuals and budget to projects.list, projects.info, milestones.list, and milestones.info.
- We added depends_on to the milestones.info and milestones.list endpoints.
- We added dependency_for to the milestones.info and milestones.list endpoints. This indicates all the milestones for which the current milestone is a dependency.
- We added depends_on to the milestones.create and milestones.update endpoints. It allows setting a dependency on another milestone of the same project.

February 2020​

- We added an ids filter to lostReasons.list.
- As events can be linked to deals, we added the deal link type to events.list and events.info, and allow filtering on deals in events.list.
- We added lost_reason to the response of deals.info.
- We added lost_reason to the response of deals.list. This is composed of a lostReason object along with a more elaborate remark.
- We added a filter term to invoices.list.
- We added the purchaseordernumber to the response of both deals.list and deals.info request.
- We added the summary to the response of both the deals.list and deals.info request. The summary can also be added and updated through the deals.create / deals.update endpoints.

January 2020​

- We added the time tracking locked and updatable properties to timeTracking.info.
- We exposed the "Freeze time tracking after a number of days" preference in users.me.
- We added format ubl/e-fff to invoices.download.
- We added filters estimatedclosingdatefrom and estimatedclosingdateuntil to deals.list.
- We added a new sorting option weightedvalue to deals.list and will allow ascending as well as descending orders on sorts. The default remains created\at and descending as before if nothing is passed.
- We added the weighted_value to the response of both deals.list and deals.info requests.
- We added the extraoptionallowed information (for single select custom fields) to customFieldDefinitions.list and customFieldDefinitions.info endpoints.
- We added format ubl/e-fff to creditNotes.download.

📅 Year 2019​

* * *

October 2019​

- We added milestones.delete.
- We added a estimatedclosingdate filter to deals.list.
- We added a filter created_before to deal.list.
- We modified filter responsibleuserid in deal.list to also accept an array of responsible\user\ids.
- Task custom fields are now included as custom_fields on tasks.info. They can also be added and updated through the tasks.create / tasks.update endpoints.
- Milestone custom fields are now included as custom_fields on milestones.info. They can also be added and updated through the milestones.create / milestones.update endpoints.

July 2019​

- We added an updated_since filter to products.list.
- We added project to tasks.info and tasks.list.
- We added a filter by subject to timeTracking.list.
- A task_id filter has been added to /events.list.
- We added a term filter to milestone.list.

June 2019​

- We added a term filter to tasks.list.
- We added tasks.complete and tasks.reopen endpoints.
- We added dueby and duefrom to tasks.list filters.
- We added a tasks.schedule endpoint.
- We added the ability to sort tasks.list based on a descending due_at.
- tasks.info and tasks.list now return information about the customer.
- We added customer parameter to tasks.create and tasks.update.
- In order to link milestones and deals to a task, we added milestoneid and dealid as optional parameters to tasks.create and tasks.update.
- tasks.list and tasks.info now return the milestone and deal objects.

May 2019​

- We added a started_at property to timers.update in order to be able to update the start time of a running timer.
- We added sent as a boolean to invoices.info and invoices.list.
- We added an optional filter on ids to invoices.list.
- We added creditNote.booked and product.added to the available webhooks list.

April 2019​

- In users.info, we added the status property to the response since it is now possible to retrieve deactivated users.
- In users.list, you can now also request deactivated users, by using a new filter on status. By default, the endpoint keeps returning active users only. The status is also returned in the response data.
- We've added a products.add endpoint. Because you can provide the selling price of a product in this endpoint, we also return it in products.info from now on.
- We now also return the paymentreference of an invoice in the invoices.list. We also made it filterable through the paymentreference filter.
- We added the purchaseordernumber to all relevant endpoints (invoices.draft, invoices.update, invoices.info and invoices.list). The property is also filterable through the purchaseordernumber filter.
- We added currencyexchangerate to quotations.info.
- The events.list endpoint now has an optional filter property ids.
- The tasks.list endpoint now has an optional filter property ids.
- We added an invoices.credit endpoint.

March 2019​

- On invoices.draft and invoices.update you can now also provide (a) global discount(s) through the discounts property.
- We've published a bunch of tasks endpoints (tasks.list, tasks.info, tasks.create, tasks.update, tasks.delete).
- We now also return a currencyexchangerate on all .info endpoints where we support multi-currency. That is quotations.info, invoices.info and creditNotes.info.

February 2019​

- We now also return the invoicing_method of a milestone. Both in milestones.list and milestones.info.
- We now expose the invoiceability of time trackings and running timers. You can now use the invoiceable property on the following endpoints:
  
  - timeTracking.list
  - timeTracking.info
  - timeTracking.add
  - timeTracking.update
  - timers.current
  - timers.start
  - timers.update
  
  We also return an invoiceable preference in the users.me endpoint that exposes whether a user prefers to track time by default as invoiceable or not.
- We've added a nationalidentificationnumber property on contacts. You can read it from contacts.list and contacts.info. It's also writeable through contacts.add and contacts.update.
- Invoicing custom fields included as custom_fields. They are returned in invoices.info. They can be added or updated through invoices.draft and invoices.update.
- Deal can now be filtered with a term in deals.list. We will return deals of which the term is part of the title, reference or customer's name.
- We have created a way to fetch more data about related resources: sideloading. More information can be found here.
- We didn't provide you with a way to find the uuid of a quotation. Based on a v1 deal id, you can now retrieve the uuid of a quotation with migrate.id.

January 2019​

- The projects.list endpoint has an optional filter to filter on term now. We return projects for which the term appears in the title or description.
- During invoices.draft and invoices.update, we now allow you to provide a withholdingtaxrate_id. Don't worry if you don't know what this is. Withholding taxes only apply in certain countries, eg Spain or Italy.
- We added a filter on term in users.list. We return those users who have the term in their first name, last name or email address.
- We already had a part of the products APIs for our own usage, but since it might be useful to you, we are making it public. So products.list and products.info are now available for usage.

Previous  
\
Upgrading your API version

Next  
\
Breaking Changes

- 📅 Year 2026
- 📅 Year 2025
- 📅 Year 2024
- 📅 Year 2023
- 📅 Year 2022
- 📅 Year 2021
- 📅 Year 2020
- 📅 Year 2019
