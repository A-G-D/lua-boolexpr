# Overview

Back to: [Table of Contents](index.md)

<br/>

## Background

Lua-BoolExpr is a Lua library for **Bool**ean **Expr**essions. A boolean expression is an expression that evaluates to a single boolean value. When talking about boolean expressions, you often immediately think of simple conditional statements. Though also applicable, this script was made for so much more than this simple usage. In particular, the main motivation for creating this library is to have a convenient way of representing [logic gates](https://en.wikipedia.org/wiki/Logic_gate) using functions that return a boolean value. Therefore, unlike in ordinary expressions where you are only concerned with the returned value, this script specifically puts emphasis to the path of execution of the expressions themselves and thus, provides useful utilities related to these.

The main class of this library is ```BoolExpr```, which is a list of operands operated by a single logical operator. These operands though, could themselves be another boolean expressions, in which case they are considered as nested boolean expressions. As such, it is easier to visualize a ```BoolExpr``` object as a boolean expression tree where each node (from root to leaves) is a boolean expression, not necessarily a ```BoolExpr``` since other things can also be considered boolean expressions, namely, functions, callable tables, and [manually-constructed boolean expressions](0_api-reference.md/#interface).

<br/>

## Main Features

- Dynamic boolean expressions
- Reversed boolean expression evaluation
- Propagation of arguments to the expression operands upon evaluation

<br/>

Previous: [API Reference](0_api-reference.md)

Next: [Creating Boolean Expressions](2_creating-expressions.md)

[Back to top](#overview)
