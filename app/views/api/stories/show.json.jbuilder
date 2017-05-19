json.set! @story.id do
  json.id @story.id
  json.title @story.title
  json.body @story.body
  json.image @story.image_url
  json.read_time @story.read_time
  json.author_name @story.author.username
  json.author_image @story.author.image_url
  json.author_biography @story.author.biography
  # json.followers @story.author.followers
end
