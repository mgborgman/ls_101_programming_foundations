range = (1..99).to_a
puts range.select {|num| num % 2 != 0}