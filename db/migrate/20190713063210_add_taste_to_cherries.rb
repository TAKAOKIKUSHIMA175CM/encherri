class AddTasteToCherries < ActiveRecord::Migration[5.2]
  def change
    add_column :cherries, :taste, :integer
  end
end
