produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(list)
  selected_item = {}
  names = list.keys
  counter = 0
  loop do
    break if counter == names.length
    current_key = names[counter]
    current_value = list[current_key]
    if current_value == "Fruit"
      selected_item[current_key] = current_value
    end
    counter += 1
  end
  selected_item
end



p select_fruit(produce)