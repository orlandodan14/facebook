OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '664665023727104', 'f511acd6b4c475e21dd6644d8bd75ba8',
  :client_options => { :ssl => { :verify => !Rails.env.development? } }
end