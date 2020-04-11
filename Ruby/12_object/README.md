### Get Object Id
```ruby
a = [1,2,3]
b = [1,2,3]

p a.object_id
p b.object_id
```

### Compare and Copy
- compare content
```ruby
a == b
```
- compare reference
```ruby
a.equal?(b)
```
- copy reference
```ruby
b = a 
```
- copy content
```ruby
b = a.dup
```



