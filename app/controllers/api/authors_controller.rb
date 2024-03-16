class Api::AuthorsController < Api::ApplicationController
  def index
    authors = Artist.author
    render json: authors, each_serializer: ArtistSerializer, is_song: false
  end

  def show 
    author = Artist.find(params[:id])
    render json: author, each_serializer: ArtistSerializer, is_song: true
  end

end