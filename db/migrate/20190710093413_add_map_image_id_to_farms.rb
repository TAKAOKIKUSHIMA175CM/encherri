class AddMapImageIdToFarms < ActiveRecord::Migration[5.2]
  def change
    add_column :farms, :map_image_id, :string
  end
end
