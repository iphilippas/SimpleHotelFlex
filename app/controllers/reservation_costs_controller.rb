class ReservationCostsController < ApplicationController
  # GET /reservation_costs
  # GET /reservation_costs.json
  def index
    @reservation_costs = ReservationCost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservation_costs }
    end
  end

  # GET /reservation_costs/1
  # GET /reservation_costs/1.json
  def show
    @reservation_cost = ReservationCost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reservation_cost }
    end
  end

  # GET /reservation_costs/new
  # GET /reservation_costs/new.json
  def new
    @reservation_cost = ReservationCost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reservation_cost }
    end
  end

  # GET /reservation_costs/1/edit
  def edit
    @reservation_cost = ReservationCost.find(params[:id])
  end

  # POST /reservation_costs
  # POST /reservation_costs.json
  def create
    @reservation_cost = ReservationCost.new(params[:reservation_cost])

    respond_to do |format|
      if @reservation_cost.save
        format.html { redirect_to @reservation_cost, notice: 'Reservation cost was successfully created.' }
        format.json { render json: @reservation_cost, status: :created, location: @reservation_cost }
      else
        format.html { render action: "new" }
        format.json { render json: @reservation_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reservation_costs/1
  # PUT /reservation_costs/1.json
  def update
    @reservation_cost = ReservationCost.find(params[:id])

    respond_to do |format|
      if @reservation_cost.update_attributes(params[:reservation_cost])
        format.html { redirect_to @reservation_cost, notice: 'Reservation cost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reservation_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation_costs/1
  # DELETE /reservation_costs/1.json
  def destroy
    @reservation_cost = ReservationCost.find(params[:id])
    @reservation_cost.destroy

    respond_to do |format|
      format.html { redirect_to reservation_costs_url }
      format.json { head :no_content }
    end
  end
end
