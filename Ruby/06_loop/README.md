### while 

```ruby
i = 1;
t = 10
# you have to define i outsite while loop
while i <=10 do
    puts i
    i += 1
end 
```


### for
```ruby
for i in 1..10
    puts i
end
# i is available outsite for loop
puts i
```


### each
```ruby
(0..10).each { |x| puts x }
# x is not available outside block
[0,1,2,3,4].each { |x| puts x}
```


### each_with_index
```ruby
[1,2,3].each_with_inde do |value, key|
    p key
    p value
end
```

## Break && Continue
```ruby
    break # brean
    next # continue
```
