class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :date_time
      t.integer :user_id
      t.integer :parkactivity_id

      t.timestamps
    end
  end
end
