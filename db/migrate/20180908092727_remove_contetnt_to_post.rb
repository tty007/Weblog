class RemoveContetntToPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :contetnt, :text
    add_column :posts, :content, :text
  end
end
