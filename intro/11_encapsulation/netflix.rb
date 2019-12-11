class Movie
  attr_reader :title

  def initialize(title)
    @title = title
  end
end

class NetflixAccount
  # Your code goes here

  def initialize(username)
    @username = username
    @my_list = []
    @recently_watched = []
  end

  public
  def add_to_my_list(movie)
    @my_list.push(movie)
  end

  private
  def check_movie(movie)
    return movie.class == Movie
  end

  public
  def remove_from_my_list(movie)
    if check_movie(movie) and @my_list.include? movie
      @my_list.delete(movie)
    end
  end

  public
  def watch(movie)
    @recently_watched.push(movie)
  end
end

movies = [
  Movie.new("Seven Samurai"),
  Movie.new("Wall Street"),
  Movie.new("Big Hero 6")
]

account = NetflixAccount.new("user123")
account.watch(movies[0])
account.add_to_my_list(movies[1])
account.add_to_my_list(movies[2])
account.remove_from_my_list(movies[2])
