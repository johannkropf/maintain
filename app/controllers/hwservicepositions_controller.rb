class HwservicepositionsController < ApplicationController
  before_filter :find_hwservice

  # GET /hwservicepositions
  # GET /hwservicepositions.json
  def index
    @hwservicepositions = @hwservice.hwservicepositions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hwservicepositions }
    end
  end

  # GET /Hwservicepositions/1
  # GET /Hwservicepositions/1.json
  def show
    @hwserviceposition = @hwservice.hwservicepositions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hwserviceposition }
    end
  end

  # GET /Hwservicepositions/new
  # GET /Hwservicepositions/new.json
  def new
    @hwserviceposition = @hwservice.hwservicepositions.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hwserviceposition }
    end
  end

  # GET /Hwservicepositions/1/edit
  def edit
    @hwserviceposition = @hwservice.hwservicepositions.find(params[:id])
  end

  # POST /Hwservicepositions
  # POST /Hwservicepositions.json
  def create
    @hwserviceposition = @hwservice.hwservicepositions.build(params[:hwserviceposition])

    respond_to do |format|
      if @hwserviceposition.save
        format.html { redirect_to @hwservice, notice: 'Hw serviceposition was successfully created.' }
#        format.html { redirect_to [@hwservice, @hwserviceposition], notice: 'Hwserviceposition was successfully created.' }
        format.json { render json: @hwserviceposition, status: :created, location: @hwserviceposition }
      else
        format.html { render action: "new" }
        format.json { render json: @hwserviceposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Hwservicepositions/1
  # PUT /Hwservicepositions/1.json
  def update
    @hwserviceposition = @hwservice.hwservicepositions.find(params[:id])

    respond_to do |format|
      if @hwserviceposition.update_attributes(params[:hwserviceposition])
        format.html { redirect_to @hwservice, notice: 'Hw serviceposition was successfully updated.' }
#        format.html { redirect_to [@hwservice, @hwserviceposition], notice: 'Hw serviceposition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hwserviceposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Hwservicepositions/1
  # DELETE /Hwservicepositions/1.json
  def destroy
    @hwserviceposition = @hwservice.hwservicepositions.find(params[:id])
    @hwserviceposition.destroy

    respond_to do |format|
      format.html { redirect_to @hwservice}
#      format.html { redirect_to hwservice_path(@hwservice) }
      format.json { head :no_content }
    end
  end

 #  # GET /Hwservicepositions/addtoservice
 #  # GET /Hwservicepositions/addtoservice.json
 #  def addtoservice
	# @hwservice = Hwservice.find(params[:id])
	# @hwserviceposition = Hwserviceposition.new
 #    @hwserviceposition.hwservice = @hwservice
	
	# respond_to do |format|
	#   format.html # addtoservice.html.erb
	#   format.json { render json: @hwserviceposition }
	# end
 #  end

  private 
  def find_hwservice
    @hwservice = Hwservice.find(params[:hwservice_id])
  end

end


