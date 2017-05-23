json.id @user.id
json.username @user.username
json.image_url @user.image_url
json.biography @user.biography

json.follows current_user.follows?(@user)

json.gurus @user.gurus.count
json.disciples @user.disciples.count
