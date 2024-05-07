class Api::SingersController < Api::ApplicationController
  def index
    page_size = params[:page_size] || 10
    singers = Artist.singer.page(params[:page]).per(page_size)
    render json: {
      singers: ActiveModel::Serializer::CollectionSerializer.new(singers, each_serializer: ArtistSerializer,is_song: false),
      total_pages: singers.total_pages
    }
  end

  def show 
    singer = Artist.find(params[:id])
    render json: singer, each_serializer: ArtistSerializer, is_song: true
  end

  def albums
    singers = Artist.includes(:albums).singer.where(id: params[:ids])
    render json: singers, each_serializer: ArtistSerializer, include: 'albums'
  end

end
