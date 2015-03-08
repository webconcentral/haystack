class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string  :name,      null: false,        default: ""
      t.string  :email,     null: false,        default: ""
      t.string  :phone,     null: false,        default: ""
      t.text    :description, null: false,      default: ""

    	t.timestamps null: false
    end

    add_index :tickets, [:name, :updated_at, :email]
  end
end
