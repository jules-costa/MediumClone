json.id @user.id
json.username @user.username
json.image_url @user.image_url
json.biography @user.biography
json.following @user.followers.count
json.followers @user.followees.count
