class RoomCostsController < ApplicationController
  # GET /room_costs
  # GET /room_costs.json
  def index
    @room_costs = RoomCost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @room_costs }
    end
  end

  # GET /room_costs/1
  # GET /room_costs/1.json
  def show
    @room_cost = RoomCost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room_cost }
    end
  end

  # GET /room_costs/new
  # GET /room_costs/new.json
  def new
    
    
    @room_cost = RoomCost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room_cost }
    end
  end

  # GET /room_costs/1/edit
  def edit
    @room_cost = RoomCost.find(params[:id])
  end

  # POST /room_costs
  # POST /room_costs.json
  def create
    @room_cost = RoomCost.new(params[:room_cost])

    respond_to do |format|
      if @room_cost.save
        format.html { redirect_to @room_cost, notice: 'Room cost was successfully created.' }
        format.json { render json: @room_cost, status: :created, location: @room_cost }
      else
        format.html { render action: "new" }
        format.json { render json: @room_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /room_costs/1
  # PUT /room_costs/1.json
  def update
    @room_cost = RoomCost.find(params[:id])

    respond_to do |format|
      if @room_cost.update_attributes(params[:room_cost])
        format.html { redirect_to @room_cost, notice: 'Room cost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_costs/1
  # DELETE /room_costs/1.json
  def destroy
    @room_cost = RoomCost.find(params[:id])
    @room_cost.destroy

    respond_to do |format|
      format.html { redirect_to room_costs_url }
      format.json { head :no_content }
    end
  end
end
