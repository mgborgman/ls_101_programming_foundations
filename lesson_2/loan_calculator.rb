def prompt(msg)
  puts "=> #{msg}"
end

def valid_number(num)
  /^\d*\.\d*$/.match(num) || /^\d+$/.match(num)
end

# Welcome
prompt("Welcome to Borgman Banking Loan Calculator!")
prompt("To get started lets get some info about your loan: ")
# get input from user; loan ammount, APR, loan duration
prompt("How much will will this loan be for? ")
loan_ammount = gets.chomp
# check for valid loan ammount input

loop do
  if valid_number(loan_ammount)
    prompt("Your loan will be for $#{loan_ammount}. Is this correct? (Y/N)")
    user_confirmation = gets.chomp.downcase.split('').first
    if user_confirmation == 'y'
      break
    else
      prompt("How much will will this loan be for? ")
      loan_ammount = gets.chomp
    end
  else
    prompt("That is not a valid loan ammount, please re-enter.")
    prompt("How much will will this loan be for? ")
    loan_ammount = gets.chomp
  end
end
apr_formatting_message = <<-MSG
please enter APRs in the following format:
7 not .07 and leave off \% signs as they will be added for you.
MSG

prompt(apr_formatting_message)
prompt("What is the APR(annual percentage rate) on your loan? ")
apr = gets.chomp

# check for valid APR input
loop do
  if valid_number(apr)
    prompt("You are borrowing at #{apr}\% interest per year," \
    "is that correct? (Y/N) ")
    user_confirmation = gets.chomp.downcase.split('').first
    if user_confirmation == 'y'
      break
    else
      prompt(apr_formatting_message)
      prompt("What is the APR(annual percentage rate) on your loan? ")
      apr = gets.chomp
    end
  else
    prompt("Looks like you entered an invalid interest rate.")
    prompt(apr_formatting_message)
    prompt("What is the APR(annual percentage rate) on your loan? ")
    apr = gets.chomp
  end
end

prompt("Will you be entering the duration of your loan in months or years?" \
  "(Months/Years)")
months_or_years = gets.chomp.downcase.split('').first

loan_duration_months = nil
loan_duration_years = nil

loop do
  if months_or_years == 'm'
    prompt("How long will you be borrowing the money for? ")
    loan_duration_months = gets.chomp
    if loan_duration_months > '1' && valid_number(loan_duration_months)
      puts(
        <<-MSG
            Loan Ammount: \$#{loan_ammount}
            APR: #{apr.to_f}\%
            Loan Durantion: #{loan_duration_months} months.
            MSG
      )
    elsif loan_duration_months <= '1' && valid_number(loan_duration_months)
      puts(
        <<-MSG
            Loan Ammount: \$#{loan_ammount}
            APR: #{apr.to_f}\%
            Loan Durantion: #{loan_duration_months} month.
            MSG
      )
    else
      prompt("Duration of loan must be represented with numbers.")
      prompt("How long will you be borrowing the money for? ")
      loan_duration_months = gets.chomp
    end
    break
  elsif months_or_years == 'y'
    prompt("How long will you be borrowing the money for? ")
    loan_duration_years = gets.chomp
    if loan_duration_years > '1' && valid_number(loan_duration_years)
      puts(
        <<-MSG
            Loan Ammount: \$#{loan_ammount}
            APR: #{apr.to_f}\%
            Loan Durantion: #{loan_duration_years} years.
            MSG
      )
    elsif loan_duration_years <= '1' && valid_number(loan_duration_years)
      puts(
        <<-MSG
            Loan Ammount: \$#{loan_ammount}
            APR: #{apr.to_f}\%
            Loan Duration: #{loan_duration_years} year.
            MSG
      )
    else
      prompt("Duration of loan must be represented with numbers.")
      prompt("How long will you be borrowing the money for? ")
      loan_duration_years = gets.chomp
    end
    break
  else
    prompt("Hmm... didn't quite get that, please enter months or years")
    months_or_years = gets.chomp.downcase.split('').first
  end
end

# if durration in years, calculate loan duration in months
if loan_duration_months.nil?
  loan_duration_months = loan_duration_years.to_i * 12
else
  loan_duration_years = loan_duration_months.to_i / 12
end

# calculate monthly interest rate
monthly_interest_rate = apr.to_f / 12
monthly_interest_rate_decimal = monthly_interest_rate / 100

monthly_payment = loan_ammount.to_i * (monthly_interest_rate_decimal /
(1 - (1 + monthly_interest_rate_decimal)**-loan_duration_months.to_i))

prompt("Your monthly payments will be: #{monthly_payment}")

# print result to screen.
