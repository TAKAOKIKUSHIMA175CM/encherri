class RenameNameColumnToFarms < ActiveRecord::Migration[5.2]
  def change
  	rename_column :farms, :name, :home_page
  end
end
