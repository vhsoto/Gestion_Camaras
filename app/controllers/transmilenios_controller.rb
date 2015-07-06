class TransmileniosController < ApplicationController
  before_action :set_transmilenio, only: [:show, :edit, :update, :destroy]

  # GET /transmilenios
  # GET /transmilenios.json
  def index
    @transmilenios = Transmilenio.all
  end

  # GET /transmilenios/1
  # GET /transmilenios/1.json
  def show
  end

  # GET /transmilenios/new
  def new
    @transmilenio = Transmilenio.new
  end

  # GET /transmilenios/1/edit
  def edit
  end

  # POST /transmilenios
  # POST /transmilenios.json
  def create
    @transmilenio = Transmilenio.new(transmilenio_params)

    respond_to do |format|
      if @transmilenio.save
        format.html { redirect_to @transmilenio, notice: 'Transmilenio was successfully created.' }
        format.json { render :show, status: :created, location: @transmilenio }
      else
        format.html { render :new }
        format.json { render json: @transmilenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmilenios/1
  # PATCH/PUT /transmilenios/1.json
  def update
    respond_to do |format|
      if @transmilenio.update(transmilenio_params)
        format.html { redirect_to @transmilenio, notice: 'Transmilenio was successfully updated.' }
        format.json { render :show, status: :ok, location: @transmilenio }
      else
        format.html { render :edit }
        format.json { render json: @transmilenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmilenios/1
  # DELETE /transmilenios/1.json
  def destroy
    @transmilenio.destroy
    respond_to do |format|
      format.html { redirect_to transmilenios_url, notice: 'Transmilenio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmilenio
      @transmilenio = Transmilenio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transmilenio_params
      params.require(:transmilenio).permit(:spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition)
    end
end
