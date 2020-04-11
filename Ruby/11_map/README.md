### Map
- short statement
```ruby
x = [1,2,3].map { |n| n*2 }
p x
```
- long statement
```ruby
[1,2,3].map do |i|
    puts i
end
```
- With index

```ruby
x = [1,2,3].each_with_index.map do |v,k|
    [v,k]    
end
p x  
```


### Alternative
```ruby
x = [1,2,3].collect { |n| n*2 }
```