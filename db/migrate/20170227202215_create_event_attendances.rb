class CreateEventAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :event_attendances do |t|
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
