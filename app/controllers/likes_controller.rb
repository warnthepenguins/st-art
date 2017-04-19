class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /likes
  # GET /likes.json
  def index
    # @user = current_user
    # @likes = Like.where(user_id: @user.id)
    # @street_arts = @likes.map { |like| StreetArt.find(like.street_art_id)  }
    @user = current_user
    @street_arts = StreetArt.where(id: @user.likes.map(&:street_art_id))
  end

  # GET /likes/1
  # GET /likes/1.json
  def show
  end

  # GET /likes/new
  def new
    @like = Like.new(street_art: StreetArt.find(params[:street_art_id]))

    @like = Like.new(like_params)
    @like.street_art = StreetArt.find(params[:street_art_id])
    @like.user = current_user

    respond_to do |format|
      if @like.save
        format.html { redirect_to street_arts_url, notice: 'Street art added to your list.' }
        format.json { render :show, status: :created, location: @like }
      else
        format.html { render :new }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end

  end

  # GET /likes/1/edit
  def edit
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new(like_params)
    @like.street_art = StreetArt.find(params[:street_art_id])
    @like.user = current_user

    respond_to do |format|
      if @like.save
        format.html { redirect_to street_arts_url, notice: 'Street art added to your list.' }
        format.json { render :show, status: :created, location: @like }
      else
        format.html { render :new }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likes/1
  # PATCH/PUT /likes/1.json
  def update
    respond_to do |format|
      if @like.update(like_params)
        format.html { redirect_to @like, notice: 'Street art added to your list.' }
        format.json { render :show, status: :ok, location: @like }
      else
        format.html { render :edit }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes/1
  # DELETE /likes/1.json
  def destroy
    @like.destroy
    respond_to do |format|
      format.html { redirect_to likes_url, notice: 'Street art removed from your list.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      params.fetch(:like, {})
    end
end
