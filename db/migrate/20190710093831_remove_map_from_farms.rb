class RemoveMapFromFarms < ActiveRecord::Migration[5.2]
  def change
    remove_column :farms, :map, :string
  end
end
