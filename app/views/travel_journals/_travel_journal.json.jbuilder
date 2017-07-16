json.extract! travel_journal, :id, :user_id, :title, :description, :created_at, :updated_at
json.url travel_journal_url(travel_journal, format: :json)
