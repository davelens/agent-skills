---
url: https://developer.focus.teamleader.eu/docs/api/groups
title: Groups | Teamleader Developers
words: 120
---
- [](/)
- API Reference
- New Projects
- Groups

Groups

Required scopes: projects

📄️projectGroups.list  
\
Lists all the groups that match the optional filters provided.

📄️projectGroups.info  
\
Returns all the information for one group.

📄️projectGroups.create  
\
Create a group. All properties except for \title\ and \project\_id\ are optional.

📄️projectGroups.update  
\
Update a group. All attributes except for \id\ are optional. Providing \null\ will clear that value from the project (for properties that are nullable).

📄️projectGroups.duplicate  
\
Duplicate a group and its entities, without any time trackings.

📄️projectGroups.delete  
\
Delete a group.

📄️projectGroups.assign  
\
Assign a user or a team to a group.

📄️projectGroups.unassign  
\
Unassign a user or a team from a group.

Previous  
\
projectLines.removeFromGroup

Next  
\
projectGroups.list
