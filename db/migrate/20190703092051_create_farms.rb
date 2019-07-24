class CreateFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :farm_name
      t.string :business_day
      t.string :map
      t.integer :user_id
      t.string :farm_image_id
      t.integer :price
      t.string :area
      t.text :feature

      t.timestamps
    end
  end
end
