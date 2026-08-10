---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/Variants/
title: Quickshell - Variants
words: 182
---
* * *

Variants: Reloadable

import Quickshell

Creates and destroys instances of the given component when the given property changes.

Variants is similar to Repeater except it is for non Item objects, and acts as a reload scope.

Each non duplicate value passed to Go to model will create a new instance of Go to delegate with a modelData property set to that value.

See Go to Quickshell.screens for an example of using Variants to create copies of a window per screen.

WARNING

BUG: Variants currently fails to reload children if the variant set is changed as it is instantiated. (usually due to a mutation during variant creation)

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- delegate :  Component
  
  default
  
  The component to create instances of.
  
  The delegate should define a modelData property that will be populated with a value from the Go to model.
- model :  list &lt;variant&gt;
  
  The list of sets of properties to create instances with. Each set creates an instance of the component, which are updated when the input sets update.
- instances :  list &lt;QtObject&gt;
  
  readonly
  
  Current instances of the delegate.
