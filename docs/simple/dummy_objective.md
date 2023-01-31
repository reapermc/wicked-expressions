# Creating a dummy objective

We can create a scoreboard like this.

```py
x = Scoreboard('test_objective', 'dummy')
```

Which will as expected create a `dummy` objective with the name `test_objective`.

However, if we omit specifying the criteria all together, the criteria will still be `dummy` by default, as shown below.

```py
x = Scoreboard('test_objective')
```