class CreateParkActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :park_activities do |t|
      t.integer :park_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
