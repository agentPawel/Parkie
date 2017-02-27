class ChangeCellFieldToString < ActiveRecord::Migration[5.0]
  def change
    change_column(:users, :cell, :string)
  end
end
