### Define

```ruby
def log(a, b = 1)
    puts a
    puts b
end
```


### Use
```ruby
log('hello world')
log 'hello world'
```


### flexible arguments
```ruby
def log(*numbers)
    numbers.each { |n| p n }
end

sum 1,2,3,4,5
```