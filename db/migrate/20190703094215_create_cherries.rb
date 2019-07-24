class CreateCherries < ActiveRecord::Migration[5.2]
  def change
    create_table :cherries do |t|
      t.integer :farm_id
      t.string :cherry_name
      t.string :taste
      t.string :sour
      t.string :cherry_image_id
      t.string :size

      t.timestamps
    end
  end
end
