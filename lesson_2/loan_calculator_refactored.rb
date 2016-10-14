def prompt(msg)
  puts "=> #{msg}"
end

def valid_number(num)
  /^\d*\.\d*$/.match(num) || /^\d+$/.match(num)
end

def get_loan_ammount()
  prompt("How much will will this loan be for? ")
  loan_ammount = gets.chomp
end

def get_apr(msg)
  prompt(msg)
  prompt("What is the APR(annual percentage rate) on your loan? ")
  apr = gets.chomp
end

def get_loan_duration()
  prompt("How long will you be borrowing the money for? ")
  loan_duration_months = gets.chomp
end

def convert_years_to_months(months_or_years, loan_duration_months)
  if months_or_years == 'y'
    loan_duration_months = loan_duration_months.to_i * 12
    loan_duration_months = loan_duration_months.to_s
  else
    loan_duration_months
  end
end

# Welcome
prompt("Welcome to Borgman Banking Loan Calculator!")
prompt("To get started lets get some info about your loan: ")
# get input from user; loan ammount, APR, loan duration
loan_ammount = get_loan_ammount()
# check for valid loan ammount input
loop do
  if valid_number(loan_ammount)
    break
  else
    prompt("Invalid entry. Loans must be entered in numeric format.")
    loan_ammount = get_loan_ammount
  end
end

apr_formatting_message = <<~HEREDOC
  please enter APRs in the following format:
  7 not .07 and leave off \% signs as they will be added for you.
HEREDOC

apr = get_apr(apr_formatting_message)

# check for valid APR input
loop do
  if valid_number(apr)
    break
  else
    prompt("Invalid Entry")
    apr = get_apr(apr_formatting_message)
  end
end

prompt("Will you be entering the duration of your loan in (m)onths or (y)ears?" \
  "(M/Y)")
months_or_years = gets.chomp.downcase

loan_duration_months = nil

loop do 
  if months_or_years != 'm' && months_or_years != 'y'
    prompt("Please enter 'm' for months or 'y' for years")
    months_or_years = gets.chomp.downcase
  end
  break
end

# month_msg = <<~MSG
#   Loan Ammount: \$#{'%.02f' % loan_ammount}
#   APR: #{apr.to_f}\%
#   Loan Duration: #{loan_duration_months} month.
# MSG

# months_msg = <<~MSG
#   Loan Ammount: \$#{'%.02f' % loan_ammount}
#   APR: #{apr.to_f}\%
#   Loan Duration: #{loan_duration_months} months.
# MSG

# TODO: Break this loop into seperate methods.
# 1 for getting loan_duration
# 1 for validating loan_duration 
loop do
  loan_duration_months = get_loan_duration()
  if loan_duration_months <= '0' && valid_number(loan_duration_months)
    prompt("Loan duration must be greater than 0 and must only contain numbers")
    next    
  elsif loan_duration_months.to_i.positive?
    break
  else
    prompt("Duration of loan must be represented with numbers.")
    next
  end
end

loan_duration_months = convert_years_to_months(months_or_years, loan_duration_months)
puts loan_duration_months

# calculate monthly interest rate
monthly_interest_rate = apr.to_f / 12
monthly_interest_rate_decimal = monthly_interest_rate / 100

if apr > '0'
  monthly_payment = loan_ammount.to_i * (monthly_interest_rate_decimal /
  (1 - (1 + monthly_interest_rate_decimal)**-loan_duration_months.to_i))
else
  monthly_payment = loan_ammount.to_f / loan_duration_months.to_f
end
# TODO: represent dollar ammounts accurately ie $1234.56 not $1234.5678
prompt("Your monthly payments will be: $#{'%.02f' % monthly_payment}")

# print result to screen.
