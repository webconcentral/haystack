class PagesController < ApplicationController

  def index
  end

  def contact
  	respond_to do |format|
  		format.html
  		format.json do
  			# ticket = Ticket.create(
     #      name: params[:name]
     #      email: params[:email])
  			ContactMailer.send_message.deliver

        render :json => { "hello" => "yes"}
  		end
  	end
  end
end
