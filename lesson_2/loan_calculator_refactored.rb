def prompt(msg)
  puts "=> #{msg}"
end

def valid_number(num)
  /^\d*\.\d*$/.match(num) || /^\d+$/.match(num)
end

def loan_ammount
  prompt("How much will will this loan be for? ")
  gets.chomp
end

def apr(msg)
  prompt(msg)
  prompt("What is the annual percentage rate) on your loan? ")
  gets.chomp
end

def loan_duration
  prompt("How long will you be borrowing the money for? ")
  gets.chomp
end

def convert_years_to_months(months_or_years, loan_duration_months)
  if months_or_years == 'y'
    (loan_duration_months.to_i * 12).to_s
    # loan_duration_months.to_s
  else
    loan_duration_months
  end
end

def print_loan_info(loan_duration, month_msg, months_msg)
  if loan_duration > '1'
    puts months_msg
  else
    puts month_msg
  end
end

# Welcome
prompt("Welcome to Borgman Banking Loan Calculator!")
prompt("To get started lets get some info about your loan: ")
# get input from user; loan ammount, APR, loan duration
loan_ammount = loan_ammount()
# check for valid loan ammount input
loop do
  if valid_number(loan_ammount)
    break
  else
    prompt("Invalid entry. Loans must be entered in numeric format.")
    loan_ammount = loan_ammount()
  end
end

apr_formatting_message = <<~HEREDOC
  please enter APRs in the following format:
  7 not .07 and leave off \% signs as they will be added for you.
HEREDOC

apr = apr(apr_formatting_message)

# check for valid APR input
loop do
  if valid_number(apr)
    break
  else
    prompt("Invalid Entry")
    apr = apr(apr_formatting_message)
  end
end

prompt("Will you be entering the duration of your loan in" \
 "(m)onths or (y)ears? (M/Y)")
months_or_years = gets.chomp.downcase

loop do
  if months_or_years != 'm' && months_or_years != 'y'
    prompt("Please enter 'm' for months or 'y' for years")
    months_or_years = gets.chomp.downcase
  else
    break
  end
end

loan_duration_months = nil

# Get loan_duration_months from user
# if loan_duration_months is less than or equal to zero ask for new input
loop do
  loan_duration_months = loan_duration()
  if loan_duration_months.to_i <= 0 && valid_number(loan_duration_months)
    prompt("Loan duration must be greater than 0 and must only contain numbers")
    next
  elsif loan_duration_months.to_i.positive?
    break
  else
    prompt("Duration of loan must be represented with numbers.")
    next
  end
end

loan_duration_months = convert_years_to_months(
  months_or_years, loan_duration_months
)

month_msg = <<~MSG
  Loan Ammount: \$#{'%.02f' % loan_ammount}
  APR: #{apr.to_f}\%
  Loan Duration: #{loan_duration_months} month.
MSG

months_msg = <<~MSG
  Loan Ammount: \$#{'%.02f' % loan_ammount}
  APR: #{apr.to_f}\%
  Loan Duration: #{loan_duration_months} months.
MSG

print_loan_info(loan_duration_months, month_msg, months_msg)

# calculate monthly interest rate
monthly_interest_rate = apr.to_f / 12
monthly_interest_rate_decimal = monthly_interest_rate / 100

# calculate monthly payment
if apr > '0'
  monthly_payment = loan_ammount.to_f * (monthly_interest_rate_decimal /
  (1 - (1 + monthly_interest_rate_decimal)**-loan_duration_months.to_i))
else
  monthly_payment = loan_ammount.to_f / loan_duration_months.to_f
end
# represent dollar ammounts accurately ie $1234.56 not $1234.5678
prompt("Your monthly payments will be: \$#{'%.02f' % monthly_payment}")
