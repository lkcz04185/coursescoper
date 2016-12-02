class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :lessons, :vidoe, :string
  end
end
