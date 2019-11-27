class DevicesController < ApplicationController
  def index
    @devices = Device.all
  end
  def new
    @device = Device.new
  end
  def create
    Device.create(device_params)
    redirect_to devices_path
  end

  private

  def device_params
    params.require(:device).permit(:serial_number, :firmware_version, :registration_date)
  end
end
