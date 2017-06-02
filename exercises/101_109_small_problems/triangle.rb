def triangle(num)
  count = num
  stars = '*'
  while count >= 1
    line = stars * count
    puts line.rjust(num)
    count -= 1
  end
end

triangle(5)
triangle(9)
