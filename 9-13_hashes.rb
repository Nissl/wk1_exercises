h = {a:1, b:2, c:3, d:4}

# question 9
puts h[:b]

# question 10
h[:e] = 5
puts h

# question 13
h.each {|k, v| h.delete(k) if v < 3.5}
puts h