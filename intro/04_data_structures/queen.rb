# A little bit of classic rock

lyrics = "Is this the real life?"\
         "Is this just fantasy?"\
         "Caught in a landslide,"\
         "No escape from reality."

# Your code goes here

occ = Hash.new
for index in  (0..lyrics.length)
  letter = lyrics[index]
  if occ[letter] == nil
      occ[letter] = 1
  else
      occ[letter] = occ[letter] + 1
  end
end

puts occ
