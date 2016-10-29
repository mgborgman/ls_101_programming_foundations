munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}
age = 0

munsters.each_value do |info|
  if info['gender'] == 'male'
    age += info['age']
  end
end

puts (age)