def print_in_box(string)
  if string == nil
    puts "+--+"
    puts "|  |"
    puts "|  |"
    puts "|  |"
    puts "+--+"
  else
    dash = "-" * string.length
    space = ' ' * string.length
    puts "+-#{dash}-+"
    puts "| #{space} |"
    puts "| #{string} |"
    puts "| #{space} |"
    puts "+-#{dash}-+" 
  end 
end

print_in_box("this is working so well, I can't believe it!!!")