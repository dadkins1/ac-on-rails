class DevicesController < ApplicationController
  before_action :set_device, only: [:show, :update, :destroy]

  def index
    @devices = Device.all
    json_response(@devices)
  end

  def create
    @device = Device.create(device_params)
    json_response(@device, :created)
    # redirect_to root_path
  end

  def show
    json_response(@device)
  end

  def destroy
    @device.destroy
    head :no_content
  end

  private

  def device_params
    params.require(:device).permit(:serial_number, :firmware_version, :registration_date)
  end

  def set_device
    @device = Device.find(params[:id])
  end
end
