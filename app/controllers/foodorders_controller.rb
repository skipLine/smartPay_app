class FoodordersController < ApplicationController
  # GET /foodorders
  # GET /foodorders.json
  def index
    @foodorders = Foodorder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foodorders }
    end
  end

  # GET /foodorders/1
  # GET /foodorders/1.json
  def show
    @foodorder = Foodorder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foodorder }
    end
  end

  # GET /foodorders/new
  # GET /foodorders/new.json
  def new
    @foodorder = Foodorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foodorder }
    end
  end

  # GET /foodorders/1/edit
  def edit
    @foodorder = Foodorder.find(params[:id])
  end

  # POST /foodorders
  # POST /foodorders.json
  def create
    @foodorder = Foodorder.new(params[:foodorder])

    respond_to do |format|
      if @foodorder.save
        format.html { redirect_to @foodorder, notice: 'Foodorder was successfully created.' }
        format.json { render json: @foodorder, status: :created, location: @foodorder }
      else
        format.html { render action: "new" }
        format.json { render json: @foodorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foodorders/1
  # PUT /foodorders/1.json
  def update
    @foodorder = Foodorder.find(params[:id])

    respond_to do |format|
      if @foodorder.update_attributes(params[:foodorder])
        format.html { redirect_to @foodorder, notice: 'Foodorder was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @foodorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodorders/1
  # DELETE /foodorders/1.json
  def destroy
    @foodorder = Foodorder.find(params[:id])
    @foodorder.destroy

    respond_to do |format|
      format.html { redirect_to foodorders_url }
      format.json { head :ok }
    end
  end
end
