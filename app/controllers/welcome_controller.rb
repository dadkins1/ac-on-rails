class WelcomeController < ApplicationController
  def index
    @devices = Device.all
    @new_device = Device.new
  end
end
