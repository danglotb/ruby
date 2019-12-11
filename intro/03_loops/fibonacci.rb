# Print out all the Fibonacci numbers from 1 to 10 in order

# Your code goes here

starting_value = 1
current_value_1 = 1
current_value_2 = 1

(0..9).each do |i|
  if i <= 1
    puts current_value_2
  else
    current_value_2 = current_value_1 + current_value_2
    current_value_1 = current_value_2 - current_value_1
    puts current_value_2
  end
end
