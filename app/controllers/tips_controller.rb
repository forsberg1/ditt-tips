class TipsController < ApplicationController
  before_filter :require_login 
  respond_to :html, :json
  # GET /tips
  # GET /tips.json
  def index
    @tips = Tip.where(:user_id => session[:user_id])
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tips }
    end
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
    @tip  = Tip.find(params[:id])
    @user = User.find(@tip.user_id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tip }
    end
  end

  # GET /tips/new
  # GET /tips/new.json
  def new
    @tip = Tip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tip }
    end
  end

  # GET /tips/1/edit
  def edit
    @tip = Tip.find(params[:id])
  end

  # POST /tips
  # POST /tips.json
  def create
    @tip = Tip.new(params[:tip])

    respond_to do |format|
      if @tip.save
        format.html { redirect_to @tip, notice: 'Tip was successfully created.' }
        format.json { render json: @tip, status: :created, location: @tip }
      else
        format.html { render action: "new" }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tips/1
  # PUT /tips/1.json
  def update
    @tip = Tip.find(params[:id])

    respond_to do |format|
      if @tip.update_attributes(params[:tip])
        format.html { redirect_to @tip, notice: 'Tip was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    @tip = Tip.find(params[:id])
    @tip.destroy

    respond_to do |format|
      format.html { redirect_to tips_url }
      format.json { head :ok }
    end
  end
end
