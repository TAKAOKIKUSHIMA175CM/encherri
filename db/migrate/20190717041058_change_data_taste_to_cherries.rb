class ChangeDataTasteToCherries < ActiveRecord::Migration[5.2]

  def change
  	change_column :cherries, :taste, :string
  end
end
