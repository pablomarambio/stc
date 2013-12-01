class HomeController < ApplicationController
  layout "public"
  def index
  end

  def contacto
  	@c = Contact.new(contact_params)
  	@c.save!
  	render text: "OK"
  end

  def contact_params
  	params.require(:contact).permit(:user, :email, :phone, :event, :comment)
  end
end
