# global variable: scope to the global
# uninitialize as nil
puts "testing global variables..."
$global_variable = 10
puts "Global variable is #{$global_variable}"
puts

# instance variables: scope to sepecifc class instances
# uninitialized as nil
puts "testing instanc variables..."

class Customer
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @addr = addr
  end

  def display
    puts "customer id is #{@cust_id}"
    puts "customer name is #{@cust_name}"
    puts "customer address is #{@cust_addr}"
  end
end

cust1 = Customer.new(1, "James", "NVI")
cust1.display()
puts

# class variables = static variables in Java, scope to class, shared among instances of that class
# class variables must be initialized
puts "testing class varaibles..."

class Provider
  @@no_of_provs = 0
  def self.display_no # self refers to Provider, Provider.display_no: Provider is the receiver, display_no is the sender
    puts @@no_of_provs
  end

  def add_no
    @@no_of_provs += 1
  end
end

Provider.display_no() # class method
p1 = Provider.new()
p1.add_no()
# p1.display_no() instance have no access to class method
Provider.display_no() # class method
puts

# local variables: scope to class,module,def and {}
puts "in the above example, local variables are id,name and addr"

# constant: must be initialized
puts "testing constant variables..."
UNIT = 1
# UNIT = 2 warning to change a constant
puts UNIT
puts

# predefined variables: cannot be changed
puts "testing pseudo variables..."
puts __FILE__ # the path of the file
puts __LINE__ # The line of the code
puts nil # undefined
puts self # the receiver now is the main object puts === main.puts
puts true
puts false
puts

p :name.class
