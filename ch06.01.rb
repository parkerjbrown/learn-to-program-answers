beers = 99

while beers != 0
  puts beers.to_s + " bottles of beer on the wall,"
  puts beers.to_s + " bottles of beer!"
  beers = beers - 1
  puts "You take one down, pass it around,"
  if beers == 1
    puts beers.to_s + " bottle of beer on the wall!"
  else
    puts beers.to_s + " bottles of beer on the wall!"
  end
  puts ""
  if beers == 1
    puts beers.to_s + " bottle of beer on the wall,"
    puts beers.to_s + " bottle of beer!"
    beers = beers - 1
    puts "You take one down, pass it around..."
    puts "...Fellas, we're out of beer!"
  end
end
