class AddContentToCherries < ActiveRecord::Migration[5.2]
  def change
    add_column :cherries, :content, :text
  end
end
