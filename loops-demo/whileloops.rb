betty_ball_volume= 1500 
cup_volume = 250 

betty_ball_status = 0

#betty_ball_full = false

cups_used = 0
loops = 0 

#while betty_ball_full == false 
    #betty_ball_status = betty_ball_status + cup_volume
#end
 
while betty_ball_status < betty_ball_volume
    betty_ball_status = betty_ball_status + cup_volume
end 

cups_used += 1
loops += 1

puts 