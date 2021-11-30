class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

 def twitter
  authorization
 end

 private

 def authorization
   @user = User.from_omniauth(request.env["omniauth.auth"])
 end
end 