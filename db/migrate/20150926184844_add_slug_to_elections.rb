class AddSlugToElections < ActiveRecord::Migration
  def change
    add_column :elections, :slug, :string
    add_index :elections, :slug, unique: true
  end
end
