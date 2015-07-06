class StrangenessesController < ApplicationController
  before_action :set_strangeness, only: [:show, :edit, :update, :destroy]

  # GET /strangenesses
  # GET /strangenesses.json
  def index
    @strangenesses = Strangeness.all
  end

  # GET /strangenesses/1
  # GET /strangenesses/1.json
  def show
  end

  # GET /strangenesses/new
  def new
    @strangeness = Strangeness.new
  end

  # GET /strangenesses/1/edit
  def edit
  end

  # POST /strangenesses
  # POST /strangenesses.json
  def create
    @strangeness = Strangeness.new(strangeness_params)

    respond_to do |format|
      if @strangeness.save
        format.html { redirect_to @strangeness, notice: 'Strangeness was successfully created.' }
        format.json { render :show, status: :created, location: @strangeness }
      else
        format.html { render :new }
        format.json { render json: @strangeness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strangenesses/1
  # PATCH/PUT /strangenesses/1.json
  def update
    respond_to do |format|
      if @strangeness.update(strangeness_params)
        format.html { redirect_to @strangeness, notice: 'Strangeness was successfully updated.' }
        format.json { render :show, status: :ok, location: @strangeness }
      else
        format.html { render :edit }
        format.json { render json: @strangeness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strangenesses/1
  # DELETE /strangenesses/1.json
  def destroy
    @strangeness.destroy
    respond_to do |format|
      format.html { redirect_to strangenesses_url, notice: 'Strangeness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strangeness
      @strangeness = Strangeness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strangeness_params
      params.require(:strangeness).permit(:strangeness_id, :strangeness_type, :strangeness_mebog, :strangeness_fvs)
    end
end
