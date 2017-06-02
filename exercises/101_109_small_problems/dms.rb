DEGREE = "\u00B0"

def dms(float)
  result = []
  numbers_list = float.divmod(1)
  degrees = numbers_list[0]
  number = numbers_list[1]
  number = number * 60
  numbers_list = number.divmod(1)
  mins = numbers_list[0]
  secs = (numbers_list[1] * 60).ceil
  result << degrees << mins << secs
end


p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")