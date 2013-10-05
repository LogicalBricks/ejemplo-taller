class RuteadorsController < ApplicationController
  before_action :set_ruteador, only: [:show, :edit, :update, :destroy]

  # GET /ruteadors
  # GET /ruteadors.json
  def index
    @ruteadors = Ruteador.all
  end

  # GET /ruteadors/1
  # GET /ruteadors/1.json
  def show
  end

  # GET /ruteadors/new
  def new
    @ruteador = Ruteador.new
  end

  # GET /ruteadors/1/edit
  def edit
  end

  # POST /ruteadors
  # POST /ruteadors.json
  def create
    @ruteador = Ruteador.new(ruteador_params)

    respond_to do |format|
      if @ruteador.save
        format.html { redirect_to @ruteador, notice: 'Ruteador was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ruteador }
      else
        format.html { render action: 'new' }
        format.json { render json: @ruteador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruteadors/1
  # PATCH/PUT /ruteadors/1.json
  def update
    respond_to do |format|
      if @ruteador.update(ruteador_params)
        format.html { redirect_to @ruteador, notice: 'Ruteador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ruteador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruteadors/1
  # DELETE /ruteadors/1.json
  def destroy
    @ruteador.destroy
    respond_to do |format|
      format.html { redirect_to ruteadors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruteador
      @ruteador = Ruteador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruteador_params
      params.require(:ruteador).permit(:usuario, :password, :puerto, :nombre, :observaciones)
    end
end
