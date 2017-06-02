def cleanup(string)
  string.gsub!(/[^a-z]/i, ' ').squeeze(' ')
end



p cleanup("---What's my +*& line?") #== ' what s my line '