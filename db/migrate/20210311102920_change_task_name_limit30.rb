class ChangeTaskNameLimit30 < ActiveRecord::Migration[6.1]
  def up
    change_column_null :tasks, :name, :string, limit: 30
  end
  
  def down
    change_column_null :tasks, :name, :string
  end
end
