### Block
- One method to run function
- Can pass parameters into the function 
```ruby
def test 
    yield # run the block statement here
end
# the name must be the same with the function name
test { puts 'hello block' }
```
- Pass arguments into block
```ruby
def test
    yield 5
end
# you can pass arguments from function into the external statement!
test { |i| puts "What? #{i}"}
```

- Another way to call statement in function
```ruby
def test(&block)  # def test
    block.call     #    yield
end                # end
```


### BEGIN & END
```ruby
BEGIN {} # run before others
END {} # run after other
```