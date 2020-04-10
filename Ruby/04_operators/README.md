### Equal
- content check: `p 1 == 2`
- num as result: `p 1 <=> 2`
- include check: `p (1...10) === 5`
- type && value check: `p 1.eql?(1.0)`
- memory addr check: `p a.equal?(b)`

### Swap
- swap: `x,y = y,x`

### Logical
```ruby
true and false # better to have ()
true && false 
true or false # better to have ()
true || false
!a # not(a)
```
- manually convert to boolean
```ruby
!1  false # the opposite boolean
!!1 true # convert to boolean value
```

### CONST | Class | Module access
```ruby
Application::Base # module::class
Application::Base:RATE ## module::class::const
# if you want to access variables or methods, after using ::, you should use .
```