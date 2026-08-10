---
url: https://developer.focus.teamleader.eu/docs/api/projects-v-2-tasks
title: Tasks | Teamleader Developers
words: 139
---
- [](/)
- API Reference
- New Projects
- Tasks

Tasks

&gt; These endpoints are for (new) project tasks. For documentation on endpoints for tasks not linked to a project, see Tasks below.

Required scopes: projects

📄️tasks.list  
\
Lists all the tasks that match the optional filters provided.

📄️tasks.info  
\
Returns all the information for one task.

📄️tasks.create  
\
Create a task. All properties except for \title\ and \project\_id\ are optional.

📄️tasks.update  
\
Update a task. All attributes except for \id\ are optional. Providing \null\ will clear that value from the project (for properties that are nullable).

📄️tasks.duplicate  
\
Duplicate a task, without its time trackings.

📄️tasks.delete  
\
Delete a task.

📄️tasks.assign  
\
Assign a user or a team to a task.

📄️tasks.unassign  
\
Unassign a user or a team from a task.

Previous  
\
projectGroups.unassign

Next  
\
tasks.list
