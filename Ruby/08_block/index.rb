squares_proc = Proc.new { |n| n ** 2 }
p [1, 2, 3].map(&squares_proc)

squares_lambda = lambda { |n| n ** 2 }
p [1, 2, 3].map(&squares_lambda)
