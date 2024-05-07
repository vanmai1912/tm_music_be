class Api::AuthorsController < Api::ApplicationController
  def index
    page_size = params[:page_size] || 10
    authors = Artist.author.page(params[:page]).per(page_size)
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