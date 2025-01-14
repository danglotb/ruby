# Height in meters
towers = [
  { :name => "Berliner Fernsehturm", :height => 368.0 },
  { :name => "Canton Tower", :height => 600.0 },
  { :name => "Eiffel Tower", :height => 324.0 },
  { :name => "Tokyo Tower", :height => 332.6 },
  { :name => "Stratosphere Tower", :height => 350.2 }
]

factor = 100/2.54   # Converts centimeters to inches

conversion = lambda do |x|
  # Your code goes here
  return x.map { |hash| [hash[:name] => hash[:height] =  hash[:height] * factor] }
end

puts conversion.call(towers.sort_by { |hash| - hash[:height] })

# Your code goes here
