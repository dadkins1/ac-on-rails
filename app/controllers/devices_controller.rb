class DevicesController < ApplicationController
  def index
    redirect_to root_path
  end

  def create
    Device.create(device_params)
    redirect_to root_path
  end

  private

  def device_params
    params.require(:device).permit(:serial_number, :firmware_version, :registration_date)
  end
end
