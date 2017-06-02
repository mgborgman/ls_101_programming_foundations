require 'pry'

def staggered_case(string)

  results = ''
  char_array = string.split('')
  char_array.each_with_index do |char, index|
    if char =~ /[^A-Za-z]/
      results << char
    elsif index.even?
      results << char.upcase
    elsif index.odd?
      results << char.downcase
    end
  end
  results        
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# staggered_case with user determined upcase or downcase for index 0

def staggered_case2(string, starting_case = 'uppercase')
  starting_case == 'uppercase' ? need_upper = true : need_upper = false
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case2('I Love Launch School!', 'uppercase') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', 'lowercase') == 'aLl_cApS' 
p staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


def staggered_case3(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result << char
      next
    elsif need_upper
      result << char.upcase
    else
      result << char.downcase
    end
    need_upper = !need_upper
  end
  result
end


p staggered_case3('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case3('ALL CAPS') == 'AlL cApS'
p staggered_case3('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# stagger_case with option to skip special chars
def staggered_case4(string, ignore_special_chars = true)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result << char
      next if ignore_special_chars == true
    elsif need_upper
      result << char.upcase
    else
      result << char.downcase
    end
    need_upper = !need_upper
  end
  result
end  


p staggered_case4('I Love Launch School!', true) == 'I lOvE lAuNcH sChOoL!'
p staggered_case4('ALL_CAPS', false) == 'AlL_CaPs'
p staggered_case4('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

