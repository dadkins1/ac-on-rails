class WelcomeController < ApplicationController
  def api
  end

  def index
    if params[:search].blank?
      @devices = Device.all
    else
      @search_sn = params[:search].downcase
      @devices = Device.all.where("lower(serial_number) LIKE :search", search: "%#{@search_sn}%")
    end
  end
end
