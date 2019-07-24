class AddHomePageToFarms < ActiveRecord::Migration[5.2]
  def change
    add_column :farms, :name, :string
  end
end
