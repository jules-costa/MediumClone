json.id @user.id
json.username @user.username
json.image_url @user.image_url
json.biography @user.biography
  json.set! "follows" do
    @user.followees.try(:each) do |followee|
      json.user_id followee.id
    end
  end
json.following @user.followers.count
json.followers @user.followers.count
