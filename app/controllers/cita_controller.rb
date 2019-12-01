class CitaController < ApplicationController
  before_action :set_citum, only: [:show, :update, :destroy]

  # GET /cita
  def index
    @cita = Citum.all

    render json: @cita
  end

  # GET /cita/1
  def show
    render json: @citum
  end

  # POST /cita
  def create
    @citum = Citum.new(citum_params)

    if @citum.save
      render json: @citum, status: :created, location: @citum
    else
      render json: @citum.errors, status: :unprocessable_entity
    end
  end




  # PATCH/PUT /cita/1
  def update
    if @citum.update(citum_params)
      render json: @citum
    else
      render json: @citum.errors, status: :unprocessable_entity
    end
  end

 # PATCH/PUT /cita/1
  def cancel
    date = citum.find(params[:id])
    if date.update_attribute(cancel_params)
      render jason:{status:"Succes",messege:"update succes", data:date},status: :ok
  else
      render json: @citum.errors, status: :unprocessable_entity
    end
  end



  # DELETE /cita/1
  def destroy
    @citum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citum
      @citum = Citum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def citum_params
      params.require(:citum).permit(:Inmueble_id, :nombreCliente, :fechaVisita, :estatus)
    end

    def cancel_params
      params.require(:citum).permit(:estatus)
    end
end
