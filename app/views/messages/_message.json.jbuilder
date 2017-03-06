json.extract! message, :id, :body, :to_num, :from_num, :subscription_id, :integer, :created_at, :updated_at
json.url message_url(message, format: :json)
