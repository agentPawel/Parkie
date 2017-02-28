class FixColumnNameAgain < ActiveRecord::Migration[5.0]
  def change
    rename_column :subscriptions, :parkactivity_id, :park_activity_id
  end

end
