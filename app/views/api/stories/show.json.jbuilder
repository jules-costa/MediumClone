  json.id @story.id
  json.title @story.title
  json.body @story.body
  json.description @story.description
  json.image @story.image_url
  json.read_time @story.read_time

  json.likes @story.likers.count
  json.liked @story.liked?(current_user)

    json.set! "author" do
      json.author_id @story.author.id
      json.author_name @story.author.username
      json.author_image @story.author.image_url
      json.author_biography @story.author.biography
    end
    json.set! "comments" do
      @story.comments.try(:each) do |comment|
        json.set! comment.id do
          json.id comment.id
          json.story_id comment.story_id
          json.body comment.body
          json.author_id comment.author.id
          json.author_name comment.author.username
          json.author_image comment.author.image_url
        end
      end
    end
