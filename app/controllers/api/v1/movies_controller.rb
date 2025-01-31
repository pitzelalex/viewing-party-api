class Api::V1::MoviesController < ApplicationController
  def top_rated
    movies = MovieFacade.top_rated
    render json: MovieSerializer.serialize_movies(movies), status: :ok
  end
end