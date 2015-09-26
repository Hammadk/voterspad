class RenameLocationsToElections < ActiveRecord::Migration
  def change
    rename_table :locations, :elections
  end
end
