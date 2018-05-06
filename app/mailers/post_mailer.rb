class PostMailer < ApplicationMailer
  def post(to:, email:, body:, subject: "お問い合わせ.ccからのメールです")
    @body = body
    mail to: to, subject: subject, reply_to: email
  end
end
