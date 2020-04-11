def log(a, b = 1)
  puts a
  puts b
end

log "hello"

def log(*numbers)
  numbers.each { |n| p n }
end

sum 1, 2, 3, 4, 5

x = [1, 2, 3]
p x.methods
