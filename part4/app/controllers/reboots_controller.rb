class RebootsController < ApplicationController
  before_action :set_reboot, only: [:show, :edit, :update, :destroy]

  # GET /reboots
  # GET /reboots.json
  def index
    @reboots = Reboot.all
  end

  # GET /reboots/1
  # GET /reboots/1.json
  def show
  end

  # GET /reboots/new
  def new
    @reboot = Reboot.new
  end

  # GET /reboots/1/edit
  def edit
  end

  # POST /reboots
  # POST /reboots.json
  def create
    @reboot = Reboot.new(reboot_params)

    respond_to do |format|
      if @reboot.save
        format.html { redirect_to @reboot, notice: 'Reboot was successfully created.' }
        format.json { render :show, status: :created, location: @reboot }
      else
        format.html { render :new }
        format.json { render json: @reboot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reboots/1
  # PATCH/PUT /reboots/1.json
  def update
    respond_to do |format|
      if @reboot.update(reboot_params)
        format.html { redirect_to @reboot, notice: 'Reboot was successfully updated.' }
        format.json { render :show, status: :ok, location: @reboot }
      else
        format.html { render :edit }
        format.json { render json: @reboot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reboots/1
  # DELETE /reboots/1.json
  def destroy
    @reboot.destroy
    respond_to do |format|
      format.html { redirect_to reboots_url, notice: 'Reboot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reboot
      @reboot = Reboot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reboot_params
      params.require(:reboot).permit(:title, :description, :type)
    end
end
