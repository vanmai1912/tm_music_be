class Api::GenresController < Api::ApplicationController
    def index
      page_size = params[:page_size] || 10
      genres = Genre.all.page(params[:page]).per(page_size)
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

    def related
      genre = Genre.find(params[:id])
      genres = Genre.where.not(id: genre.id).limit(3)
      render json: genres, each_serializer: GenreSerializer, is_song: false
    end
  
  end
  