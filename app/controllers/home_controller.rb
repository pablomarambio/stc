class HomeController < ApplicationController
  layout "public"
  def index
  end

  def contacto
  	render json: { name: params["name"]}
  end
end
