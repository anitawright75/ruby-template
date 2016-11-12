class Destination < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |table|
      table.string :country
      table.string :city
      table.string :location
    end
  end
end
