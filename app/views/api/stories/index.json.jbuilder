@stories.each do |story|
  json.set! story.id do
    json.id story.id
    json.title story.title
    json.truncatedBody "#{story.body[0..30]}..."
    json.image story.image_url
    json.read_time story.read_time
    json.author_id story.author_id
    # json.set! author_id do
    #   json.name author.username
    #   json.image_url author.image_url
    # end
  end
end
