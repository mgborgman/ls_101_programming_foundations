MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"


def time_to_mins(string)
  time_array = string.split(':')
  time_array.map do |item|
    item.to_i
  end
  hours = time_array[0].to_i
  hours *= 60
  mins = time_array[1].to_i
  mins += hours
  mins
end

def after_midnight(num)
  time = 0
  if num == '00:00' || num == '24:00'
    return 0
  else
    mins = time_to_mins(num)
    time += mins.to_i
    time
  end
end


def before_midnight(num)
  time = 1440
  if num == '00:00' || num == '24:00'
    return 0
  else
    mins = time_to_mins(num)
    time -= mins.to_i
    time
  end
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0