class ServicelevelsController < ApplicationController
  # GET /servicelevels
  # GET /servicelevels.json
  def index
    @servicelevels = Servicelevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicelevels }
    end
  end

  # GET /servicelevels/1
  # GET /servicelevels/1.json
  def show
    @servicelevel = Servicelevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @servicelevel }
    end
  end

  # GET /servicelevels/new
  # GET /servicelevels/new.json
  def new
    @servicelevel = Servicelevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @servicelevel }
    end
  end

  # GET /servicelevels/1/edit
  def edit
    @servicelevel = Servicelevel.find(params[:id])
  end

  # POST /servicelevels
  # POST /servicelevels.json
  def create
    @servicelevel = Servicelevel.new(params[:servicelevel])

    respond_to do |format|
      if @servicelevel.save
#        format.html { redirect_to @servicelevel, notice: 'Servicelevel was successfully created.' }
        format.html { redirect_to servicelevels_url }
        format.json { render json: @servicelevel, status: :created, location: @servicelevel }
      else
        format.html { render action: "new" }
        format.json { render json: @servicelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /servicelevels/1
  # PUT /servicelevels/1.json
  def update
    @servicelevel = Servicelevel.find(params[:id])

    respond_to do |format|
      if @servicelevel.update_attributes(params[:servicelevel])
#        format.html { redirect_to @servicelevel, notice: 'Servicelevel was successfully updated.' }
        format.html { redirect_to servicelevels_url }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @servicelevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicelevels/1
  # DELETE /servicelevels/1.json
  def destroy
    @servicelevel = Servicelevel.find(params[:id])
    @servicelevel.destroy

    respond_to do |format|
      format.html { redirect_to servicelevels_url }
      format.json { head :no_content }
    end
  end
end
