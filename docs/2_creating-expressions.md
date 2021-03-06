# Creating Boolean Expressions

Back to: [Table of Contents](index.md)

<br/>

## Creating Expressions Using Built-in Constructors

Creating a BoolExpr constructor is pretty straightforward.

```Lua
do
    local function FilterExpression1()
        if <...> then
            return true
        end
        return false
    end

    local function FilterExpression2()
        if <...> then
            return true
        end
        return false
    end

    do
        -- Create a new boolean expression
        local and_expr = BoolExpr.And(FilterExpression1, FilterExpression2)

        ...
    end
end
```

The ```BoolExpr.And()``` constructor has a built-in check against ```nil``` arguments.

## Manually Constructed Boolean Expressions

It is also possible to create boolean expressions using ordinary tables, by using the boolean expression operators declared as enum types.

```Lua
do
    local function FilterExpression1()
        if <...> then
            return true
        end
        return false
    end

    local function FilterExpression2()
        if <...> then
            return true
        end
        return false
    end

    do
        -- Create a new boolean expression
        local and_expr = {BoolExpr.AND, FilterExpression1, FilterExpression2}

        ...
    end
end
```

In this particular case, the ```BoolExpr.AND``` boolean expression operator is used (see [Boolean Expression Operators](0_api-reference.md/#variables)). The user have the full responsibility of ensuring the validity (i.e., not ```nil```) of the passed expressions when using this method of construction since it does not have the built-in checking and assertion, though consequently, this method has no additional overhead whatsoever as the process is just a simple table creation.

<br/>

Previous: [Overview](1_overview.md)

Next: [Evaluating Boolean Expressions](3_evaluating-expressions.md)

[Back to top](#creating-expressions)
