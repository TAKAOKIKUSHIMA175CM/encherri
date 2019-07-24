class ChangeDataSourToCherries < ActiveRecord::Migration[5.2]
  def change
  	change_column :cherries, :sour, :string
  end
end
