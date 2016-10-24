flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts(flintstones.index { |item| item.start_with?('Be') })