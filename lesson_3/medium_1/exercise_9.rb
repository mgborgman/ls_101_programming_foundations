munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_key do |person|

case munsters[person]["age"]
  when  (0..17)
    munsters[person]["age_group"] = "kid"
  when (18..64)
    munsters[person]["age_group"] = "adult"
  when (65..1000)
     munsters[person]["age_group"] = "senior"
   end
end

p (munsters)