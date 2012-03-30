class User1sController < ApplicationController
  # GET /user_1s
  # GET /user_1s.json
  def index
    @user_1s = User1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_1s }
    end
  end

  # GET /user_1s/1
  # GET /user_1s/1.json
  def show
    @user_1 = User1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_1 }
    end
  end

  # GET /user_1s/new
  # GET /user_1s/new.json
  def new
    @user_1 = User1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_1 }
    end
  end

  # GET /user_1s/1/edit
  def edit
    @user_1 = User1.find(params[:id])
  end

  # POST /user_1s
  # POST /user_1s.json
  def create
    @user_1 = User1.new(params[:user_1])

    respond_to do |format|
      if @user_1.save
        UserMailer.welcome_email(@user_1).deliver
        format.html { redirect_to @user_1, notice: 'User 1 was successfully created.' }
        format.json { render json: @user_1, status: :created, location: @user_1 }
      else
        format.html { render action: "new" }
        format.json { render json: @user_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_1s/1
  # PUT /user_1s/1.json
  def update
    @user_1 = User1.find(params[:id])

    respond_to do |format|
      if @user_1.update_attributes(params[:user_1])
        format.html { redirect_to @user_1, notice: 'User 1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_1s/1
  # DELETE /user_1s/1.json
  def destroy
    @user_1 = User1.find(params[:id])
    @user_1.destroy

    respond_to do |format|
      format.html { redirect_to user_1s_url }
      format.json { head :ok }
    end
  end
end
