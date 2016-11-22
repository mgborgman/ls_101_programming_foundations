def joinor(array, delimiter=',', conjunction=' or ')
  if array.length > 2
    array = array.join(delimiter)
    array = array.insert(-2, array.slice(-1).replace(conjunction))
    puts array.chomp
  else
    puts array.join(conjunction).chomp
  end
end


array = [1, 2, 3, 4]
joinor(array)