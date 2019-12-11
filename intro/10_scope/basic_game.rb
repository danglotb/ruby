class Player
  def initialize(name)
    @name = name
  end
  def to_s()
    return "Player #{@name}"
  end
end

class Game
  @@MAX_NB_PLAYER = 3
  def initialize(name)
    @name = name
    @players = []
  end
  def add_player(player)
    if player.class == Player then
      if @players.length < @@MAX_NB_PLAYER then
        @players.push(player)
      end
    end
  end
  def to_s()

    return "#{@name} #{@players.collect {|p| p.to_s()}} (#{@players.length} / #{@@MAX_NB_PLAYER})"
  end
end

game = Game.new("RPS")

players = [
  Player.new("John"),
  Player.new("Lizzy"),
  Player.new("Clair"),
  Player.new("Brad"),
  15
]

players.each { |player| game.add_player(player) }

puts game
