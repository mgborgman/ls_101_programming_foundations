def rotate_array(arr)
  arr2 = arr.clone
  num = arr2.shift
  arr2 << num
  arr2
end

p rotate_array([1, 2, 3, 4, 5])