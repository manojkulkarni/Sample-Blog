json.array!(@posts) do |post|
  json.extract! post, :id, :title, :prticle_type, :desc
  json.url post_url(post, format: :json)
end
