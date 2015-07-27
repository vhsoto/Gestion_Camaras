class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @eventable = encontrar
    @event = @eventable.events.build
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @eventable = encontrar
    @event = @eventable.events.create(event_params)

    respond_to do |format| 
      if @event.save
        format.html { redirect_to @event, notice: 'Novedad creada con éxito!' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        flash[:notice] = 'Novedad actualizada con éxito!'
        format.html { redirect_to @event }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Novedad eliminada con éxito!' }
      format.json { head :no_content }
    end
  end

  private

    def encontrar
      if params[:human_connection_id]
          @eventable = HumanConnection.find(params[:human_connection_id])
      elsif params[:leased_id]
          @eventable = Leased.find(params[:leased_id])
      elsif params[:own_id]
          @eventable = Own.find(params[:own_id])
      elsif params[:school_id]
          @eventable = School.find(params[:school_id])
      elsif params[:transmilenio_id]
          @eventable = Transmilenio.find(params[:transmilenio_id])
      elsif params[:unit_temporal_id]
          @eventable = UnitTemporal.find(params[:unit_temporal_id])
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:mebog, :fvs, :date, :eventable_id, :eventable_type)
    end
end
