class Api::AuthorsController < Api::ApplicationController
  def index
    authors = Artist.author.page(params[:page]).per(10)
    render json: {
      authors: ActiveModel::Serializer::CollectionSerializer.new(authors, each_serializer: ArtistSerializer,is_song: false),
      total_pages: authors.total_pages
    }
  end

  def show 
    author = Artist.find(params[:id])
    render json: author, each_serializer: ArtistSerializer, is_song: true
  end

end