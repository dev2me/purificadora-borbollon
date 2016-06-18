class WelcomeController < ApplicationController
  def index
  	@user = current_user
  	@clients = Client.all
  	@orders = Order.all
  end
  def unregistered
  end
end
