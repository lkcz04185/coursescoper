class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :lessons, :video, :string
  end
end
