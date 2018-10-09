class ChangeColumnValidation < ActiveRecord::Migration[5.2]
  def change
    #post
    remove_column :posts, :title, :string
    # add_column :posts, :title, :string
    # change_column_null :posts, :title, false

    remove_column :posts, :genre, :string
    # add_column :posts, :genre, :string
    # change_column_null :posts, :genre, false

    remove_column :posts, :content, :string
    # add_column :posts, :content, :string
    # change_column_null :posts, :content, false

    # remove_foreign_key :posts, :user
    # remove_reference :posts, :user, index: true
    # add_reference :posts, :user, foreign_key: true, index: true, null: false
  end
end
