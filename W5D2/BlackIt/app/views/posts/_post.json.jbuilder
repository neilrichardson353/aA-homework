json.extract! post, :id, :title, :url, :content, :sub, :author, :created_at, :updated_at
json.url post_url(post, format: :json)
