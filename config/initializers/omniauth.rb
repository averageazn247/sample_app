Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["845586527578.apps.googleusercontent.com"], ENV["J7S60im3ff1s_MIoyY_jtivv"]
             {
             :scope => "userinfo.email,userinfo.profile,plus.me,http://gdata.youtube.com",
             :approval_prompt => "auto"
           }
            
end