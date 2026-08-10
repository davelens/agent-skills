---
url: https://developer.focus.teamleader.eu/docs/api/projects
title: Projects | Teamleader Developers
words: 375
---
- [](/)
- API Reference
- New Projects
- Projects

Projects

&gt; This is the documentation of the new projects module. See the Legacy Projects documentation for the endpoints concerning our legacy projects module.

> ⚠️ (July 2023) The projects module has been completely overhauled and is currently only available for new project users. Existing project users only have access to the old projects module.

> Over the course of the next few months, next generation projects will also be made available to existing project users, including the migration of existing project data.

> To avoid naming collisions, all endpoints of the new projects module can be found under /projects-v2, for example /projects-v2/projects.list.

> To avoid confusing "new projects" with "creating a new project", we opted for "projects-v2" over "new" as the prefix.

Required scopes: projects

📄️projects.list  
\
Lists all projects that match the optional filters provided.

📄️projects.info  
\
Returns all the information of a single project.

📄️projects.create  
\
Create a new project. Only \title\ is required. All the other fields are optional.

📄️projects.update  
\
Update a project. All attributes except for \id\ are optional. Providing \null\ will clear that value from the project (for properties that are nullable).

📄️projects.close  
\
Mark a project as closed.

📄️projects.reopen  
\
Reopen a closed project.

📄️projects.duplicate  
\
Duplicate a project.

📄️projects.delete  
\
Delete a project.

📄️projects.addOwner  
\
Add a user as owner. Doesn't fail if the user was already added.

📄️projects.removeOwner  
\
Remove a user as owner. Doesn't fail if the user wasn't linked.

📄️projects.assign  
\
Assign a user or a team to a project.

📄️projects.unassign  
\
Unassign a user or a team from a project.

📄️projects.addCustomer  
\
Add a customer to the project. Doesn't fail if the customer was already added.

📄️projects.removeCustomer  
\
Remove a customer from the project. Doesn't fail if the customer was not added.

📄️projects.addDeal  
\
Add a deal to the project. Doesn't fail if the deal was already added.

📄️projects.removeDeal  
\
Remove a deal from the project. Doesn't fail if the deal was already removed.

📄️projects.addQuotation  
\
Add a quotation to the project. Doesn't fail if the quotation was already added.

📄️projects.removeQuotation  
\
Remove a quotation from the project. Doesn't fail if the quotation was already removed.

Previous  
\
milestones.open

Next  
\
projects.list
