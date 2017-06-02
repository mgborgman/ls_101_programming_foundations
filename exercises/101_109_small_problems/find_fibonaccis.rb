require 'pry'

def find_fibonacci_index_by_length(num)
  fibonacci = [1,1]
  loop do
    fibonacci << fibonacci[-1] + fibonacci[-2]
    number = fibonacci.select do |element|
      element.to_s.length == num
    end
    break if fibonacci.to_s.size >= num 
  end
  binding.pry
  index = fibonacci.index(number[0]) + 1
end








p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847