class AddIndexOnLocationsForNameAndYear < ActiveRecord::Migration
  def change
    add_index :locations, [:name, :year], unique: true
  end
end
