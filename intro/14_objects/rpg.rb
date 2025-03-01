require "csv"

module RPG
  class Character
    attr_reader :name
    attr_reader :hit_points
    attr_reader :attack_power

    def initialize(name, hit_points, attack_power)
      @name = name
      @hit_points = hit_points
      @attack_power = attack_power
    end

    def attackEnemy(enemy)
      if enemy.class == Character
        dmg = self.attack
        puts "#{@name} attacks #{enemy.name} (#{dmg})"
        enemy.take_damage(dmg)
      end
    end

    def attack
      @attack_power * rand
    end

    def take_damage(damage)
      if @hit_points - damage > 0
        @hit_points -= damage
      else
        @hit_points = 0
      end
    end

    def is_dead
      @hit_points == 0 ? true : false
    end

    def to_s
      "#{@name}: #{@hit_points}HP,#{@attack_power}ATK"
    end
  end

  class Party
    attr_reader :characters

    def initialize
      @characters = []
    end

    def add(character)
      raise TypeError unless character.is_a?(Character)
      @characters << character
    end

    def get(index)
      return @characters[index]
    end

    def is_defeated
      @characters.all? { |character| character.is_dead }
    end

    def to_s
      @characters.to_s
    end

    def size
      return @characters.length
    end

    def get_rnd_member
      return self.get(rand(self.size))
    end
  end

  class Battle
    def initialize(hero_party, enemy_party)
      @hero_party = hero_party
      @enemy_party = enemy_party
    end

    def run
      until @hero_party.is_defeated or @enemy_party.is_defeated
        @hero_party.get_rnd_member.attackEnemy(@enemy_party.get_rnd_member)
        @enemy_party.get_rnd_member.attackEnemy(@hero_party.get_rnd_member) unless @enemy_party.is_defeated
      end
      if @hero_party.is_defeated
        puts "Heroes are all defeated"
      else
        puts "Heroes killed every enemies"
      end
    end
  end
end

def convert_to_character(array)
    # Helper method
    # Your code goes here
    return RPG::Character.new(array[0], array[1].to_i, array[2].to_i)
end

hero_party = RPG::Party.new
enemy_party = RPG::Party.new

hero_file = CSV.read("/Users/stephaniechallita/workspace/ruby-playground/ruby/intro/14_objects/heroes.csv")
hero_file.each do |line|
  hero = convert_to_character line
  hero_party.add(hero)
end

enemy_file = CSV.read("/Users/stephaniechallita/workspace/ruby-playground/ruby/intro/14_objects/enemies.csv")
enemy_file.each do |line|
  enemy = convert_to_character line
  enemy_party.add(enemy)
end

battle = RPG::Battle.new(hero_party, enemy_party)
battle.run
