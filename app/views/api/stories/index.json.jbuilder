@stories.each do |story|
  json.set! story.id do
    json.id story.id
    json.title story.title
    json.truncatedBody "#{story.body[0..95]}..."
    json.image story.image_url
    json.read_time story.read_time
    json.author_name story.author.username
    json.author_image story.author.image_url
  end
end
