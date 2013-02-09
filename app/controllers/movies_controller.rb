# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    #by default it causes the view for this action to be rendered
    end

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "{#movie.title} was successfully created"
    redirect_to movies_path
    end

# in app/controllers/movies_controller.rb

def show
  id = params[:id] # retrieve movie ID from URI route
  @movie = Movie.find(id) # look up movie by unique ID
  # will render app/views/movies/show.html.haml by default
end
end
