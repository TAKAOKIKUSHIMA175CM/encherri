class RemoveNameNanaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name_nana, :string
  end
end
