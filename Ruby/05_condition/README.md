
### IF..ELSE
```ruby
if x == 1
    print "hello world"
elseif x == 2
    print "goodbye world"
else
    print "what!"
end
```

### Simple IF
```ruby
x = 1;
p "1" if x # print 1 if x is defined (no implicit type conversion here!)
```

### Unless
- `unless` = `if !`
```ruby
# not elseif for unless
unless x = 1
    puts '!1'
else
    puts '1'
end

p "!1" unless 1;
```

### Assign only while nil

```ruby
x ||= 1 # assign 1 to x only if x is nill
```