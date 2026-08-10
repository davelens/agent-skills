---
url: https://developer.focus.teamleader.eu/docs/changelog/types-of-changes
title: Types of Changes | Teamleader Developers
words: 170
---
- [](/)
- Changes & Upgrades
- Types of Changes

Types of Changes

We consider the following changes to be backwards-compatible:

- Adding new API endpoints.
- Adding new optional parameters to existing API requests.
- Adding new properties to existing API responses.
- Adding new webhook types.
- Making existing parameters optional.
- Changing the order of properties in existing API responses.
- Fixing (potential) bugs that made an endpoint unusable (HTTP 500 errors).
- (Currently, we also hold ourselves the right to return a different error format, as there is still room for improvement)

We consider the following changes to be backwards-incompatible:

- Renaming or removing an endpoint.
- Renaming or removing a parameter of API requests.
- Renaming or removing a property of API responses.
- Changing the format of a parameter of API responses (eg. integer to float)
- Making validation of a parameter more strict (eg. making it required)
- Returning a different HTTP status code.

Previous  
\
Sideloading

Next  
\
Upgrading your API version
