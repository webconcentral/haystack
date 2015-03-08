class Ticket < ActiveRecord::Base
  validate_presence_of :name, :phone, :email, :description
end
