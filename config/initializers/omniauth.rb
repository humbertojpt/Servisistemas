OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["433956136175-4s1achfrisanfaoj1msrsl018qe9fcjg.apps.googleusercontent.com"], ENV["6ZsG9_3Sv0k_ZXhxQW2T_1C5"]
end