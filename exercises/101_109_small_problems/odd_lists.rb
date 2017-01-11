def oddities(list)
  result = []
  list.each_with_index do |item, index|
    if index.even? || index == 0
      result << item
    end
  end
  result
end