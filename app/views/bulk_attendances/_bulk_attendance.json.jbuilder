json.extract! bulk_attendance, :id, :title, :date, :attendees, :desc, :created_at, :updated_at
json.url bulk_attendance_url(bulk_attendance, format: :json)
