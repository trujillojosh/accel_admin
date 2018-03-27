json.extract! user, :id, :intra, :first, :last, :dorm, :slackname, :imac, :notes, :created_at, :updated_at
json.url user_url(user, format: :json)
