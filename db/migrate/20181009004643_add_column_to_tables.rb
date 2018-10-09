class AddColumnToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :string
    change_column_null :posts, :title, false

    add_column :posts, :genre, :string
    change_column_null :posts, :genre, false

    add_column :posts, :content, :string
    change_column_null :posts, :content, false

    # remove_foreign_key :posts, :user
    # remove_reference :posts, :user, index: true
    # add_reference :posts, :user, foreign_key: true, index: true, null: false
  end
end
