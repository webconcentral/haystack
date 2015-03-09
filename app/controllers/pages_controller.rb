class PagesController < ApplicationController

  def index
  end

  def contact
  	respond_to do |format|
  		format.html
  		format.json do
  			ticket = Ticket.new(ticket_params)

        if ticket.save
    			ContactMailer.delay.send_message(ticket.id)

          render :json => { "success" => "true"}
        else
          render :json => { "errors" => ticket.errors.full_messages }
        end
  		end
  	end
  end

  private
    def ticket_params
      params.require(:ticket).permit(:id, :name, :email, :description, :message, :phone)
    end
end
