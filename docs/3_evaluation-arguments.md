# Expression Evaluation Arguments

## Evaluation Arguments

Since evaluating a boolean expresion is syntactically fashioned after a normal function call, it should be expected that passing arguments also come in a similar manner.

```Lua
do
    local expression = BoolExpr.Any(
        function (...)
            ...
        end
    )

    expression(1, 2, 3) -- Simply pass arguments the same way as when you are calling a function
end
```

<br/>

## Expression Parameters

Leaf expressions, which are usually normal functions, receive arguments provided both internally by the system and also by the evaluator. The first two arguments received by the function are from system. The first argument is the function itself and the second is a boolean flag that determines whether the evaluation is done in reversed order. The third and onwards are from the evaluator.

```Lua
do
    local function is_even(self, reversed, n)
        return n % 2 == 0
    end
    local function lt_limit(n)
        return n < math.sqrt(10000)
    end

    do
        local even_n_within_limit = BoolExpr.And(is_even, lt_100)

        for i = 1, 200 do
            if event_n_within_limit(i) then
                print(tostring(i) .. " is an even number within the limit")
            end
        end
    end
end
```
