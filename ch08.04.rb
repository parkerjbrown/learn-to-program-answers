def english_number number
  if number < 0
    return puts "Please enter a positive number greater than or equal to zero."
  end
  if number == 0
    return "Zero"
  end

  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  teen_numbers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  left = number #"Load" the number to be calculated into the "left" variable
  write = left/1000 #Determine how many thousands to write
  left = left - write*1000 #Subtract written thousands to determine remainder

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + " thousand"
    
    if left > 0
      num_string = num_string + " " 
    end
  end

  write = left/100 #Determines how many hundreds to write
  left = left - write*100 #Subtract written hundreds to determine remainder

  if write > 0
    #RECURSION! This sends the number of hundreds ("write" variable) back through the program, forcing it to go down to the "ones" area to result in a string. This results in the "one" in "ONE hundred", the "two" in "TWO hundred", and so on. Super lazy and super effective! :D
    hundreds = english_number write
    #Add the "hundreds" variable (one, two, etc.) to the empty num_string variable, then add a "hundred" after to make "<hundreds> hundred" ("one hundred", "two hundred", etc.).
    num_string = num_string + hundreds + " hundred"
    
    if left > 0
      #Add a space if there is any amount left to calculate (avoiding, for example, the no space between "one hundredfiftyseven")
      num_string = num_string + " "
    end
  end

  write = left/10 #Determines how many tens to write
  left = left - write*10 #Subtract written tens to determine remainder
  
  if write > 0
    #If there is only one "ten" AND left is larger than zero, call upon the teen_numbers array to account for special spelling (eleven, twelve, thirteen, etc.)
    if ((write == 1) and (left > 0))
      num_string = num_string + teen_numbers[left-1]
      left = 0 #Since the "ones" place is already accounted for, set the "left" variable to zero.
    #...Otherwise, proceed as normal.
    else 
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + "-"
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string.capitalize
end

def beers_on_wall beers
  while beers != 0
    puts english_number(beers) + " bottles of beer on the wall,"
    puts english_number(beers) + " bottles of beer!"
    beers = beers - 1
    puts "You take one down, pass it around,"
    if beers == 1
      puts english_number(beers) + " bottle of beer on the wall!"
    else
      puts english_number(beers) + " bottles of beer on the wall!"
    end
    puts
    if beers == 1
      puts english_number(beers) + " bottle of beer on the wall, "
      puts english_number(beers) + " bottle of beer!"
      beers = beers - 1
      puts "You take one down, pass it around..."
      puts english_number(beers) + " beers on the wall! Dear God, fellas, we're out of beer!"
    end
  end
end

beers_on_wall(500)
