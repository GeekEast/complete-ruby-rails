# output
puts "hello world" # support single quotes
print "hello world" # support print and printf
printf "The number is %06d" % [20] # support prinf
puts "你好，世界！" # support chinese
p "hello 
world" # output with \n 

# for output newline, you have to use double quote
puts "\n"
puts '\n'


# array
a = [1, 2, 3, "h", "e", "l"]
a.each do |i|
  puts i
end


# dict
colors = {
  "red" => 1,
  "black" => 2,
  "pink" => 3,
}
colors.each do |k,v|
    puts k
    puts v
end

# range inclusive end
(10..15).each do |i|
    puts i
end

# range exclusive end
(10...15).each do |i|
    puts i
end


# build document from multiple lines, left side must be a function name
print <<EOF
   This is the first way of creating
   here document ie. multiple line string.
EOF

def display(txt)
    print txt
end

display <<EOF # pass long document as parameters to function
    This is the first way of creating
    here document ie. multiple line string.
EOF

BEGIN {
    puts "I run before run any other lines of code in this file"
}

END {
    puts "I run after all other lines of code in this file"
}

# long comments
=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end
