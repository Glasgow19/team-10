class ExhibtsController < ApplicationController
  before_action :set_exhibt, only: [:show, :edit, :update, :destroy]

  # GET /exhibts
  # GET /exhibts.json
  def index
    @exhibts = Exhibt.all
  end

  # GET /exhibts/1
  # GET /exhibts/1.json
  def show
  end

  # GET /exhibts/new
  def new
    @exhibt = Exhibt.new
  end

  # GET /exhibts/1/edit
  def edit
  end

  # POST /exhibts
  # POST /exhibts.json
  def create
    @exhibt = Exhibt.new(exhibt_params)

    respond_to do |format|
      if @exhibt.save
        format.html { redirect_to @exhibt, notice: 'Exhibt was successfully created.' }
        format.json { render :show, status: :created, location: @exhibt }
      else
        format.html { render :new }
        format.json { render json: @exhibt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibts/1
  # PATCH/PUT /exhibts/1.json
  def update
    respond_to do |format|
      if @exhibt.update(exhibt_params)
        format.html { redirect_to @exhibt, notice: 'Exhibt was successfully updated.' }
        format.json { render :show, status: :ok, location: @exhibt }
      else
        format.html { render :edit }
        format.json { render json: @exhibt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibts/1
  # DELETE /exhibts/1.json
  def destroy
    @exhibt.destroy
    respond_to do |format|
      format.html { redirect_to exhibts_url, notice: 'Exhibt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibt
      @exhibt = Exhibt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exhibt_params
      params.require(:exhibt).permit(:name)
    end
end
