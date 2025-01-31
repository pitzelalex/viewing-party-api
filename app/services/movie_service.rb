class MovieService
  def self.top_rated()
    response = conn.get("/3/discover/movie/") do |req|
      req.params['page'] = 1
      req.params['language'] = 'en-US'
      req.params['sort_by'] = 'vote_average.desc'
    end
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.themoviedb.org') do |conn|
      conn.request :authorization, 'Bearer', Rails.application.credentials.tmdb[:key]
    end
  end
end