def penultimate(string)
  puts string.split[-2]
end



penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
penultimate('one')
penultimate('')