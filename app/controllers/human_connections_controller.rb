class HumanConnectionsController < ApplicationController
  before_action :set_human_connection, only: [:show, :edit, :update, :destroy]

  # GET /human_connections
  # GET /human_connections.json
  def index
    @human_connections = HumanConnection.all
  end

  # GET /human_connections/1
  # GET /human_connections/1.json
  def show
    # @strangeness = Strangeness.find(params['human_connection_id'])
  end

  # GET /human_connections/new
  def new
    @human_connection = HumanConnection.new
  end

  # GET /human_connections/1/edit
  def edit
  end

  # POST /human_connections
  # POST /human_connections.json
  def create
    @human_connection = HumanConnection.new(human_connection_params)

    respond_to do |format|
      if @human_connection.save
        format.html { redirect_to human_connections_url, notice: 'Human connection was successfully created.' }
        format.json { render :show, status: :created, location: @human_connection }
      else
        format.html { render :new }
        format.json { render json: @human_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /human_connections/1
  # PATCH/PUT /human_connections/1.json
  def update
    respond_to do |format|
      if @human_connection.update(human_connection_params)
        format.html { redirect_to human_connections_url, notice: 'Human connection was successfully updated.' }
        format.json { render :show, status: :ok, location: @human_connection }
      else
        format.html { render :edit }
        format.json { render json: @human_connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /human_connections/1
  # DELETE /human_connections/1.json
  def destroy
    @human_connection.destroy
    respond_to do |format|
      format.html { redirect_to human_connections_url, notice: 'Human connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    begin
      HumanConnection.import(params[:file])
      redirect_to human_connections_url, notice: "Archivo plano subido con éxito"
    rescue
      redirect_to human_connections_url, notice: "Formato CSV no valido."
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_human_connection
      @human_connection = HumanConnection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def human_connection_params
      params.require(:human_connection).permit(:spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition)
    end
end
