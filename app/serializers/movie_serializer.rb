class MovieSerializer
  def self.serialize_movies(movies)
    formatted = movies.map do |movie|
      {
        id: movie.id,
        type: "movie",
        attributes: {
          title: movie.title,
          "vote_average": movie.vote_average
        }
      }
    end
    {
      data: formatted
    }
  end
end