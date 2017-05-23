@stories.each do |story|
  json.set! story.id do
    json.id story.id
    json.title story.title
    json.truncatedBody "#{story.body[0..60]}..."
    json.image story.image_url
    json.size story.size
    json.read_time story.read_time
    json.author_id story.author.id
    json.author_name story.author.username
    json.author_image story.author.image_url
  end
end
