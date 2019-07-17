class AddAreaIdToFarms < ActiveRecord::Migration[5.2]
  def change
    add_column :farms, :area_id, :integer
  end
end
