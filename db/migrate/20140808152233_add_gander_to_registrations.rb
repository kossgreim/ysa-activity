class AddGanderToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :gender, :string
  end
end
