json.extract! post, :id, :title, :content, :tags, :created_at, :updated_at
json.url post_url(post, format: :json)
