class Api::GenresController < Api::ApplicationController
    def index
      genres = Genre.all.page(params[:page]).per(10)
      render json: {
        genres: ActiveModel::Serializer::CollectionSerializer.new(genres, each_serializer: GenreSerializer,is_song: false),
        total_pages: genres.total_pages
      }
    end
  
    def show 
      genre = Genre.find(params[:id])
      render json: genre, each_serializer: GenreSerializer, is_song: true
    end

    def albums 
      genre = Genre.find(params[:id])
      albums = genre.albums
      render json: albums, each_serializer: AlbumSerializer, is_song: true
    end
  
  end