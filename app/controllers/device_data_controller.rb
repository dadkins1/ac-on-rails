class DeviceDataController < ApplicationController
  before_action :set_device_datum, only: [:show, :update, :destroy]

  def index
    @device_data = DeviceDatum.all
    json_response(@device_data)
  end

  def create
    @device_datum = DeviceDatum.create(device_datum_params)
    json_response(@device_datum, :created)
  end

  def show
    json_response(@device_datum)
  end

  def destroy
    @device_datum.destroy
    head :no_content
  end

  private

  def device_datum_params
    params.require(:device_datum).permit(:temperature, :humidity, :carbon_monoxide, :status, :device_id)
  end

  def set_device_datum
    @device_datum = DeviceDatum.find(params[:id])
  end
end
