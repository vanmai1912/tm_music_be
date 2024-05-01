class Api::GenresController < Api::ApplicationController
    def index
      genres = Genre.all.page(params[:page]).per(10)
      render json: {
        genres: genres,
        total_pages: genres.total_pages
      }, each_serializer: GenreSerializer, is_song: false
    end
  
    def show 
      genre = Genre.find(params[:id])
      render json: genre, each_serializer: GenreSerializer, is_song: true
    end
  
  end