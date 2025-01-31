class MovieFacade
  def self.top_rated()
    movie_data = MovieService.top_rated
    movie_data[:results].map do |movie_data|
      Movie.new(movie_data)
    end
  end
end