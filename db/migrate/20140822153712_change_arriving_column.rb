class ChangeArrivingColumn < ActiveRecord::Migration
  def change
    change_column :registrations, :arriving, :string
  end
end
