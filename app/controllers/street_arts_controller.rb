class StreetArtsController < ApplicationController
  before_action :set_street_art, only: [:show, :edit, :update, :destroy]

  # GET /street_arts
  # GET /street_arts.json
  def index
    @street_arts = StreetArt.all
  end

  # GET /street_arts/1
  # GET /street_arts/1.json
  def show
  end

  # GET /street_arts/new
  def new
    @street_art = StreetArt.new
  end

  # GET /street_arts/1/edit
  def edit
  end

  # POST /street_arts
  # POST /street_arts.json
  def create
    @street_art = StreetArt.new(street_art_params)

    respond_to do |format|
      if @street_art.save
        format.html { redirect_to @street_art, notice: 'Street art was successfully created.' }
        format.json { render :show, status: :created, location: @street_art }
      else
        format.html { render :new }
        format.json { render json: @street_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /street_arts/1
  # PATCH/PUT /street_arts/1.json
  def update
    respond_to do |format|
      if @street_art.update(street_art_params)
        format.html { redirect_to @street_art, notice: 'Street art was successfully updated.' }
        format.json { render :show, status: :ok, location: @street_art }
      else
        format.html { render :edit }
        format.json { render json: @street_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /street_arts/1
  # DELETE /street_arts/1.json
  def destroy
    @street_art.destroy
    respond_to do |format|
      format.html { redirect_to street_arts_url, notice: 'Street art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_street_art
      @street_art = StreetArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def street_art_params
      params.require(:street_art).permit(:title, :artist, :image)
    end
end
