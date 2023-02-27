json.extract! review, :id, :description, :video, :image, :type, :created_at, :updated_at
json.url review_url(review, format: :json)
