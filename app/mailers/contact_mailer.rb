class ContactMailer < ApplicationMailer

	def send_message
    mail(:to => "aadelelsayed@gmail.com",
      :from => "leads@haystackleads.com",
      :subject => "new contact message")
	end
end
