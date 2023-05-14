require 'rest-client'

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def top
    @movies = fetch_top_movies
  end

  def show_tmdb
    @lists = List.all
    @movie = params[:movie]
  end

  def create
    @movie = Movie.create(movie_params)
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

  def movie_params

    require.permit(:title, :rating, :overview, :poster_url)
  end
end
