# Top 10 Nintendo 64 games from Gamerankings

game_rankings = {
  "The Legend of Zelda: Ocarina of Time"    => 0.9754,
  "Super Mario 64"                          => 0.9641,
  "GoldenEye 007"                           => 0.9470,
  "Perfect Dark"                            => 0.9455,
  "The Legend of Zelda: Majora's Mask"      => 0.9195,
  "1080: TenEighty Snowboarding"            => 0.8960,
  "Conker's Bad Fur Day"                    => 0.8928,
  "Excitebike 64"                           => 0.8907,
  "Turok 2: Seeds of Evil"                  => 0.8896,
  "Paper Mario"                             => 0.8881
}

def avg_hash(hash)
  return hash.map { |k, v| v }.reduce(0, :+) / hash.length
end

def filter_element_great_or_equals_than(hash, value)
  return hash.select { |k, v| v >= value}
end

# Your code goes here
avg_game_rankings = avg_hash(game_rankings)
filtered_element_great_or_equals_than_game_rankings_above_avg =
puts "average: #{avg_game_rankings}"
filter_element_great_or_equals_than(game_rankings, avg_game_rankings).each { |k,v| puts "#{k}: #{v}" }
