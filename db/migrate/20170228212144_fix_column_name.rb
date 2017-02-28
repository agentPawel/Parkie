class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :parkactivity_id, :park_activity_id
  end

end
