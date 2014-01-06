a = [1, 2, 3]

def non_mut(a)
  a.reverse
end

def mut(a)
  a.reverse!
end

non_mut(a)
puts a

mut(a)
puts a