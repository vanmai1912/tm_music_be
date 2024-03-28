class Api::GenresController < Api::ApplicationController
    def index
      genres = Genre.all
      render json: genres, each_serializer: GenreSerializer, is_song: false
    end
  
    def show 
      genre = Genre.find(params[:id])
      render json: genre, each_serializer: GenreSerializer, is_song: true
    end
  
  end