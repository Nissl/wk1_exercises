a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = a.select {|e| e % 2 == 1}
puts new_arr