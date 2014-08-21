class AddArrivingDateToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :arriving, :timestamp
  end
end
