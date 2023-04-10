json.extract! post, :id, :title, :content, :user_id, :banner, :created_at, :updated_at
json.url post_url(post, format: :json)
json.content post.content.to_s
json.banner url_for(post.banner)
