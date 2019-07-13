class RemoveSourFromCherries < ActiveRecord::Migration[5.2]
  def change
    remove_column :cherries, :sour, :string
  end
end
