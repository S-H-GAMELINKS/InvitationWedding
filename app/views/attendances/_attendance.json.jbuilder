json.extract! attendance, :id, :name, :attend, :email, :tel, :other, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
