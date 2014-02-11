class HwservicesController < ApplicationController
  # GET /hwservices
  # GET /hwservices.json
  def index
    @hwservices = Hwservice.find(:all, :order => 'startdate')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwservices }
    end
  end

  # GET /Hwservices/1
  # GET /Hwservices/1.json
  def show
    @hwservice = Hwservice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwservice }
    end
  end

  # GET /Hwservices/new
  # GET /Hwservices/new.json
  def new
    @hwservice = Hwservice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwservice }
    end
  end

  # GET /Hwservices/1/edit
  def edit
    @hwservice = Hwservice.find(params[:id])
  end

  # POST /Hwservices
  # POST /Hwservices.json
  def create
    @hwservice = Hwservice.new(params[:hwservice])

    respond_to do |format|
      if @hwservice.save
        format.html { redirect_to @hwservice, notice: 'Hw service was successfully created.' }
        format.json { render json: @hwservice, status: :created, location: @hwservice }
      else
        format.html { render action: "new" }
        format.json { render json: @hwservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Hwservices/1
  # PUT /Hwservices/1.json
  def update
    @hwservice = Hwservice.find(params[:id])

    respond_to do |format|
      if @hwservice.update_attributes(params[:hwservice])
        format.html { redirect_to @hwservice, notice: 'Hw service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Hwservices/1
  # DELETE /Hwservices/1.json
  def destroy
    @hwservice = Hwservice.find(params[:id])
    @hwservice.destroy

    respond_to do |format|
      format.html { redirect_to hwservices_url }
      format.json { head :no_content }
    end
  end

end
