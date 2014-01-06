num_var = 15

# this changes var (1a)
1.times do 
  num_var = 16
end

puts num_var

str_var = "Hi!"

# this does not change var (1b)
1.times do
  str_var.downcase
end

puts str_var

# this does change var (1c)

1.times do
  str_var.downcase!
end

puts str_var

# referencing inner scope variable in outer scope (2)
# variable shows up as undefined in outer scope, program crashes
# sadness ensues
1.times do
  inner_var = 5
end

# This line is commented out so I can also test nested do blocks (below)
#puts inner_var

# Nested do blocks.
# The inner block is able to call a variable defined in the outer block.
1.times do 
  inner_var = 5
  1.times do
    puts inner_var
  end
end

# Nested do blocks. The outer block is NOT able to call the variable defined
# in the inner block. The program crashes.
1.times do 
  1.times do
    inner_var = 5
  end
  puts inner_var
end