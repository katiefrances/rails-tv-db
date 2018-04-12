json.extract! tv_db, :id, :name, :desc, :number_of_episodes, :up_to_date, :created_at, :updated_at
json.url tv_db_url(tv_db, format: :json)
