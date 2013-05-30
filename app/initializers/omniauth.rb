Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,  "845586527578.apps.googleusercontent.com","J7S60im3ff1s_MIoyY_jtivv" , {
    access_type: 'offline',
     scope: 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/calendar',
    redirect_uri:'http://localhost/auth/google_oauth2/callback'
  }
end
