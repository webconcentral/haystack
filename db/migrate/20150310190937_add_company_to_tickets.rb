class AddCompanyToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :company, :string, null: false, default: ""
  end
end
