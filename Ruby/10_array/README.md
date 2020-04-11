###  Create
- same type
```ruby
p [1,2,3,4]
```
- different type
```ruby
p [1,2,3,'4']
```
- batch
```ruby
p Array.new(10,2) # create 10 2s
p Array.new(2,[1,2,3]) # create 2 [1,2,3]s
```

### Access
- single
```ruby
arr = [1,2,3]
p arr[0]
p arr[-1]
p arr.fetch(5) # throw errors
p arr.fetch(5,nil) # return nil
p arr.fetch(5,'fallback') # return fallback
p arr.values.at(0, 3, 3, 100) # no errors: return nil
```
- batch
```ruby
arr = [1,2,3,4]
p arr[0,1] #[0,1)
p arr[0..1] #[0,1]
p arr[0...1] #[0,1)
p arr[0...100] # return [1,2,3,4]
p arr.slice(3)
p arr.slice(3,5) # return [4]
p arr.slice(0..1)
p arr.slice(0...1)
```
- Head and Tail
```ruby
arr = [1,2,3,4]
p arr.first
p arr.last
p arr.first(2)
p arr.last(2)
```

### Update
- exist
```ruby
arr = [1,2,3,4]
arr[0] = 0
```
- non-exist
```ruby
arr = [1,2,3,4]
arr[5] = 5 # return [1,2,3,4,nil,5]
```
- delete
```ruby
arr = [1,2,3,4]
arr[0..1] = 1 # return [1,3,4]
```
### Empty && Null Check
- empty
```ruby
arr = [1,2,3]
p arr.length
p arr.size
p arr.empty?
```
- null
```ruby
p arr.nil?
```

### Count Element
```ruby
arr = [1,2,3,1]
p arr.count(1) # return 2
```


### Insert
```ruby
arr = [1,2,3]
p arr.insert(0,0)
```

### Add & Remove From Head or Tail
- To Head
```ruby
arr = [1,2,3]
p arr.unshift(0)
```
- From Head
```ruby
arr = [1,2,3]
p arr.shift
p arr.shift(2)
```
- To Tail
```ruby
arr = [1,2,3]
p arr.push(4)
p arr << 4
p arr << 4 << 5
```
- From Tail
```ruby
arr = [1,2,3,4]
p arr.pop
p arr.pop(2)
```


### Compare Array
- Value 
```ruby
a = [1,2,3]
b = [1,2,3]
p a == b # return tue
p a === b # same as ==
```
- Type & Value
```ruby
a = [1,2,3]
b = [1,2,3]
p a.eql?(b)
```
- Memeory Address
```ruby
a = [1,2,3]
b = [1,2,3]
p a.equal?(b) # false
```
- Number as Result
```ruby
a = [1,2,3]
b = [1,2]
c = [1,2,3]
p a <=> b # 1
p b <=> a # -1
p a <=> c # 0
```

### Check Element Exist
```ruby
arr = [1,2,3]
# p 3.in?(arr) !!not right, 3 has not in method
p arr.include?(3)
```


### Check Type
```ruby
p [1,2,3].is_a? Array # a doesn't represent array here
```

### Range to Array
```ruby
p (1..5).to_a
```


### Reverse
```ruby
res = [1,2,3].reverse # out-place opeartion
[1,2,3].reverse! # in-place opeartion
```

### Sort
- out-place operation
```ruby
arr = [1,3,2,4]
asc = arr.sort # 1,2,3,4
desc1 = arr.sort { |a,b| b <=> a }
desc2 = arr.sort.reverse

p arr
p asc
p desc1
p desc2
```

### Concat
```ruby
p [1,2,3] + [4,5] # out-place
p [1,2,3].concat [4,5] # in-place
```


### Max && Min
- out-place
```ruby
[1,2,3].max
p [[],[1,2],[1,2,3]].max_by { |sa| sa.length }
[1,2,3].min
p [[],[1,2],[1,2,3]].min_by { |sa| sa.length }
```

### Find
- find the index
```ruby
x = [1,2,3,4,5]
p x.index(2)
p x.find_index(2)
```
- find the first item
```ruby
x = [1,2,3,4] 
p x.find { |x| x == 2 }
p x.detect { |x| x == 3}
```


### Filtering
- out-place
```ruby
numbers = [1,2,2,3,3,4,4,5]
a = numbers.select { |x| x > 2 }
p numbers
p a 
```
- the reverse of select
```ruby
numbers = [1,2,2,3,3,4,4,5]
a = numbers.reject { |x| x > 2 }
p numbers
p a 
```

### Unpack
- for multi-dimension array
```ruby
x = [1,2,3]
a,b,c = x;
```

### Partition
- does not support `<=>`
```ruby
arr = [1,2,3,4,5,6,7]
p arr.partition { |n| n == 4}
```


### any && all
- any
```ruby
[1,2,3,4,5].any? do |x|
    x > 3
end
```
- all
```ruby
[1,2,3,4,5].all? do |x|
    x > 0 
end
```

### Unique
```ruby
a = [1,2,2,3,3,4]
p a .uniq
p a
a.uniq!
p a # in-place
```

### Compact
- only remove `nil`
```ruby
p [1,2,3,0, nil,nil].compact # out-place
```

### Reduce
- reduce
```ruby
p [1,2,3].reduce(:+)   # sum start as 0
p [1,2,3].reduce(1,:+) # sum start as 1
```
- inject
```ruby
p [1,2,3].inject { |sum,n| sum += n}
p [1,2,3].inject(1) { |sum,n| sum += n }
```


### Flatten
```ruby
p  [1,[2,3,[4,5,[6]]]].flatten # [1,2,3,4,5,6]
```

### Zip
- vertical operation
```ruby
a = [1,2,3]
b = [4,5,6]
p a.zip b # [[1,4],[2,5],[3,6]]
```

### Intersection && Unin && Complementary
```ruby
p [1,2,3] & [2,2] # 2, no dups
p [1,2,3,4] | [3,4,5,6] # 123456, no dups
p [1,2,3,4,5,5] - [2,3,4] # 1,5,5. allow for dups
```