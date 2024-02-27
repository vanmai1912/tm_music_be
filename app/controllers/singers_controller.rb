class SingersController < ApplicationController
  before_action :set_singer, only: %i[ show edit update destroy ]

  def index
    @singers = Artist.singer
  end

  def show
  end

  def new
    @singer = Artist.singer.new
  end

  def edit
  end

  def create
    @singer = Artist.singer.new(singer_params)

    respond_to do |format|
      if @singer.save
        format.html { redirect_to artist_url(@artist), notice: "Singer was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @singer.update(singer_params)
        format.html { redirect_to artist_url(@artist), notice: "Singer was successfully updated." }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @singer.destroy

    respond_to do |format|
      format.html { redirect_to singers_url, notice: "Singer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_singer
      @singer = Artist.find(params[:id])
    end

    def singer_params
      params.require(:artist).permit(:name, :description, :birthdate, :avatar)
    end
end
