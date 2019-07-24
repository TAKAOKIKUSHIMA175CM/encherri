class AddSourToCherries < ActiveRecord::Migration[5.2]
  def change
    add_column :cherries, :sour, :integer
  end
end
