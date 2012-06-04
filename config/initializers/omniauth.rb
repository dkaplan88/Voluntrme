Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '222222497895934', 'ce0de95e1e4201a30035735652c00ae3',
           :display => 'popup', :scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'
end