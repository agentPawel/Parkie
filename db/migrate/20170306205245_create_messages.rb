class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.string :to_num
      t.string :from_num
      t.string :subscription_id
      t.string :integer

      t.timestamps
    end
  end
end
