class MalingsController < ApplicationController
  before_action :set_maling, only: [:show, :edit, :update, :destroy]

  # GET /malings
  # GET /malings.json
  def index
    @malings = Maling.all
  end

  # GET /malings/1
  # GET /malings/1.json
  def show
  end

  # GET /malings/new
  def new
    @maling = Maling.new
  end

  # GET /malings/1/edit
  def edit
  end

  # POST /malings
  # POST /malings.json
  def create
    @maling = Maling.new(maling_params)

    respond_to do |format|
      if @maling.save
        format.html { redirect_to @maling, notice: 'Maling was successfully created.' }
        format.json { render :show, status: :created, location: @maling }
      else
        format.html { render :new }
        format.json { render json: @maling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malings/1
  # PATCH/PUT /malings/1.json
  def update
    respond_to do |format|
      if @maling.update(maling_params)
        format.html { redirect_to @maling, notice: 'Maling was successfully updated.' }
        format.json { render :show, status: :ok, location: @maling }
      else
        format.html { render :edit }
        format.json { render json: @maling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malings/1
  # DELETE /malings/1.json
  def destroy
    @maling.destroy
    respond_to do |format|
      format.html { redirect_to malings_url, notice: 'Maling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maling
      @maling = Maling.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maling_params
      params.require(:maling).permit(:title, :message)
    end
end
