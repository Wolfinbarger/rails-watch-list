require 'rest-client'

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def top
    @movies = fetch_top_movies
  end

  private

  def fetch_top_movies
    movies = []
    key = ENV['API_KEY']
    url = "https://api.themoviedb.org/3/movie/popular?api_key=#{key}"
    response = RestClient.get(url)
    data = JSON.parse(response)
    result = data['results']
    result.each do |movie|
      movies << { title: movie['title'],
                  overview: movie['overview'],
                  poster_url: "https://image.tmdb.org/t/p/original/#{movie['poster_path']}",
                  rating: movie['vote_average'] }
    end
    movies
  end
end
