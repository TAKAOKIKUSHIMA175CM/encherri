class RemoveTasteFromCherries < ActiveRecord::Migration[5.2]
  def change
    remove_column :cherries, :taste, :string
  end
end
