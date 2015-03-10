class Ticket < ActiveRecord::Base
  validates_presence_of :name, :phone, :email, :description, :company
end
