require "csv"
require "logger"

class AuthenticationError < StandardError
end

class User
  attr_reader :username
  attr_reader :password

  def initialize(username, password)
    raise ArgumentError unless /^[A-Za-z0-9_-]{3,16}$/.match(username)
    raise ArgumentError unless /^[A-Za-z0-9!@#$%^&*()_+-=]{6,16}$/.match(password)
    @username = username
    @password = password
  end
end

class Application
  def initialize
    @logger = Logger.new(STDOUT)
    @users = []
    @is_authenticated = false
  end

  def load_users(filename)
    CSV.read(filename).each do |line|
      @users.push(User.new(line[0], line[1]))
    end
  end

  def login
    until @is_authenticated
      # Your code goes here
    end

    @logger.info("Login successful!")
  end

  def run
    login
  end
end

application = Application.new
application.load_users("/Users/stephaniechallita/workspace/ruby-playground/ruby/intro/15_exceptions/users.csv")
application.run
