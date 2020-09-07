json.data do
    json.user do
        json.id @user.id
        json.email @user.email
        json.authentication_token @user.authentication_token
        json.username @user.username
    end
end
