json.extract! team, :id, :name, :batch, :stage, :end, :active, :lead, :summary, :notes, :created_at, :updated_at
json.url team_url(team, format: :json)
