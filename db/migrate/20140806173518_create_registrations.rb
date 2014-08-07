class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :country
      t.string :city
      t.boolean :member
      t.boolean :need_place
      t.integer :days
      t.text :comment

      t.timestamps
    end
  end
end
