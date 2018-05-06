require File.join(__dir__, "production")

Rails.application.configure do
  config.action_mailer.default_url_options = { host: "otoiawase-cc-staging.herokuapp.com" }
  config.action_mailer.asset_host = "https://otoiawase-cc-staging.herokuapp.com"
end
