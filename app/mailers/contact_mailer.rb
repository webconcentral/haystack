class ContactMailer < ApplicationMailer

	def send_message(ticket_id)
    @ticket = Ticket.find(ticket_id)

    mail(:to => "aadelelsayed@gmail.com",
      :from => "leads@haystackleads.com",
      :subject => "new contact message")
	end
end
