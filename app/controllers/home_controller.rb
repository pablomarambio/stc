class HomeController < ApplicationController
  layout "public"
  
  def contacto
  	@c = Contact.new(contact_params)
  	@c.save!
  	render text: "OK"
  end

  def index_contactos
    @contacts = Contact.all
    render 'contacts/index', layout: false
  end

  def contact_params
  	params.require(:contact).permit(:user, :email, :phone, :event, :comment, :code, :referer)
  end
end
