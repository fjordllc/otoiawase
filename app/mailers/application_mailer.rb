class ApplicationMailer < ActionMailer::Base
  default from: "noreply@otoiawase.cc"
  layout "mailer"
  include Rails.application.routes.url_helpers
end
