class RoomRatesController < ApplicationController
  # GET /room_rates
  # GET /room_rates.json
  def index
    @q = RoomRate.search(params[:q])
    @room_rates = @q.result.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @room_rates }
    end
  end

  # GET /room_rates/1
  # GET /room_rates/1.json
  def show
    @room_rate = RoomRate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room_rate }
    end
  end

  # GET /room_rates/new
  # GET /room_rates/new.json
  def new
    @room_rate = RoomRate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room_rate }
    end
  end

  # GET /room_rates/1/edit
  def edit
    @room_rate = RoomRate.find(params[:id])
  end

  # POST /room_rates
  # POST /room_rates.json
  def create
    @room_rate = RoomRate.new(params[:room_rate])

    respond_to do |format|
      if @room_rate.save
        format.html { redirect_to @room_rate, notice: 'Room rate was successfully created.' }
        format.json { render json: @room_rate, status: :created, location: @room_rate }
      else
        format.html { render action: "new" }
        format.json { render json: @room_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /room_rates/1
  # PUT /room_rates/1.json
  def update
    @room_rate = RoomRate.find(params[:id])

    respond_to do |format|
      if @room_rate.update_attributes(params[:room_rate])
        format.html { redirect_to @room_rate, notice: 'Room rate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_rates/1
  # DELETE /room_rates/1.json
  def destroy
    @room_rate = RoomRate.find(params[:id])
    @room_rate.destroy

    respond_to do |format|
      format.html { redirect_to room_rates_url }
      format.json { head :no_content }
    end
  end
end
