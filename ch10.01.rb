def time_now &block
  time_now = Time.now.hour
  if time_now == 0
    time_now = 12
  elsif time_now > 12
    time_now = time_now - 12
  end
  
  puts "The time reads " + time_now.to_s + " o'clock."  

  time_now.to_i.times do
    block.call
  end

  puts "You regret purchasing this particular grandfather clock."
end

time_now do
  puts "DONG! "
end
