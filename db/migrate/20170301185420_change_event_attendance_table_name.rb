class ChangeEventAttendanceTableName < ActiveRecord::Migration[5.0]
  def change
   rename_table :event_attendances, :participants
 end
end
