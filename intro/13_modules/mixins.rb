require_relative "fighter"

module WingChunMixin
  # Your code goes here
  def block
    Logging::logger.info("block")
  end
end

module BoxingMixin
  # Your code goes here
  def uppercut
    puts "uppercut"
  end
end

module FencingMixin
  # Your code goes here
  def riposte
    puts "riposte"
  end
end

module JeetKuneDoMixin
  # Your code goes here
  def straight_kick
    puts "straight_kick"
  end
end
