@stories.each do |story|
  json.set! story.id do
    json.id story.id
    json.title story.title
    json.truncatedBody "#{story.body[0..30]}..."
  end
end
