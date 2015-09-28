class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :website
      t.string :image_url
      t.text :description

      t.timestamps null: false
    end
  end
end
