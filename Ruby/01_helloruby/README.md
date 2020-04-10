### Output
- puts: **auto** newline
- print, printf: **no** newline
- p: print details including `\n`
```ruby
# same result
print "The number is %06d" % [20]
printf "The number is %06d" % [20]
```
> use `puts` or `print`

```ruby
puts "\n" # this will add newline
puts '\n' # \n
```

### Array
```ruby
a = [1,2,"x"] # allows for different types
```
### Hash (dict, key-value pair)
```ruby
a = {
    1 => 'a',
    2 => 'b'
}
```
### Range
```ruby
a = (1..3)  # 1, 2, 3
a = (1...3) # 1, 2
a = "A".."Z" # from A to Z
```

### Pass multple-line string to a function
```ruby
print <<EOF
    hello
    world
EOF
```

### Long Comments
```ruby
=begin
long comments here
=end
```


