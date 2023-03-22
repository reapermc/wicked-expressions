from wicked_expressions:api import DataStash


foo = DataStash('data.test.path')
bar = DataStash('data.bar')


foo.set(69)
bar.set(10)


foo.set(bar.get())

print(foo)
print(bar)

foo.append('test')



