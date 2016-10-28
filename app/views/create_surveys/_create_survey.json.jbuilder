json.extract! create_survey, :id, :title, :description, :user_id, :created_at, :updated_at
json.url create_survey_url(create_survey, format: :json)