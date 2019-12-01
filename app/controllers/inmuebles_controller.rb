class InmueblesController < ApplicationController
  before_action :set_inmueble, only: [:show, :update, :destroy]

  # GET /inmuebles
  def index
    @inmuebles = Inmueble.all

    render json: @inmuebles
  end

  # GET /inmuebles/1
  def show
    render json: @inmueble
  end

  # POST /inmuebles
  def create
    @inmueble = Inmueble.new(inmueble_params)

    if @inmueble.save
      render json: @inmueble, status: :created, location: @inmueble
    else
      render json: @inmueble.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inmuebles/1
  def update
    if @inmueble.update(inmueble_params)
      render json: @inmueble
    else
      render json: @inmueble.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inmuebles/1
  def destroy
    @inmueble.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inmueble
      @inmueble = Inmueble.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inmueble_params
      params.require(:inmueble).permit(:direccion, :precio)
    end
end
