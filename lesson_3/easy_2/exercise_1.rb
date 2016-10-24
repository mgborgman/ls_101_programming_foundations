ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#include?()
puts("Using #include")
if ages.include?("Spot")
  puts("found it.")
else
  puts("Spot is not here.")
end
#has_key?()
puts("Using #has_key")
if ages.has_key?("Spot")
  puts("found it.")
else
  puts("Spot is not here.")
end
# fetch
puts("Using #fetch")
puts (ages.fetch("Spot", "Spot is not here"))
