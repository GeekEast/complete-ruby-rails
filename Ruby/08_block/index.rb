def diet
  status = lambda { return "x" }
  status.call
  "y"
end

p diet

status = lambda { return "x" }

status = Proc.new { "x" }

def die(&status)
  status.call
  "y"
end

p die(&status)
