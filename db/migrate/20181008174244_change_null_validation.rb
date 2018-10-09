class ChangeNullValidation < ActiveRecord::Migration[5.2]
  def change
    def up
      # Not Null制約
      change_column_null :users, :name, false
    end
  
    def down
      change_column_null :users, :name, true
    end
  end
end
