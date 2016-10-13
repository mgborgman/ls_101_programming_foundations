# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets.chomp
# puts answer
require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  /^\d*\.\d*$/.match(num) || /^\d+$/.match(num)
end





def operation_to_message(op)
  operation = case op
              when '1'
                'Adding'
              when '2'
                'Subtracting'
              when '3'
                'Multipling'
              when '4'
                'Dividing'
              end

  operation
end

prompt MESSAGES['welcome']

name = ''

loop do
  prompt MESSAGES['enter_name']
  name = gets.chomp

  if name.empty?()
    prompt MESSAGES['valid_name']
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  number2 = ''
  operator = ''
  loop do
    prompt MESSAGES['get_num_1']
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else prompt MESSAGES['invalid_input']
    end
  end

  loop do
    prompt MESSAGES['get_num_2']
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt MESSAGES['invalid_input']
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

  prompt operator_prompt

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt MESSAGES['invalid_operator_choice']
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."
  result = case operator
           when '1'
             result = number1.to_f + number2.to_f
           when '2'
             result = number1.to_f - number2.to_f
           when '3'
             result = number1.to_f * number2.to_f
           when '4'
             result = number1.to_f / number2.to_f
           end

  prompt "The result is #{result}"

  prompt MESSAGES['play_again']
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt MESSAGES['good_bye']
