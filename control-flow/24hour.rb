# Challenge 4 - Hard
#Automatically get the system time in 24-hour time.

#Find out the current timezone (zone code or hour offset, up to you).
current_time_zone = "AEST"
#Display the current, local 24-hour time.
puts "the #{current_time_zone} local 24-hour time is 11:26 AM"
#Prompt the user to enter a new timezone (timezone code eg. AEDT or number eg. -7, up to you).
puts "please enter a new timezone eg. ACST, ACWST, AWST or LHDT"
#Display the time in the user’s chosen timezone.
user_time_zone = gets.chomp.to_s

case user_time_zone
    when ACST
    puts "the time in your chosen timezone is 10:00 AM"
    when ACWST
    puts "the time in your chosen timezone is 9:16 AM"
    when AWST
    puts "the time in your chosen timezone is 8:32 AM"
    when LHDT
    puts "the time in your chosen timezone is 11:33 AM"
end 

#Display the time difference between the local timezone and the user’s desired timezone.

def newtime(user_time_zone)
    diff = user_time_zone - current_time_zone
    return diff
end

   puts "the difference between the local time zone and your desire time zone is #{newtime}" 

