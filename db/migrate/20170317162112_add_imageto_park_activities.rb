class AddImagetoParkActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :parks, :image, :string
    add_column :park_activities, :image, :string

  end
end
