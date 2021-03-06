json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :movie_id, :comment, :user_email
  json.url review_url(review, format: :json)
end
