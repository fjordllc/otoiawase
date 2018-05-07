class PostMailer < ApplicationMailer
  def post(to:, cc: nil, email:, body:, subject: "お問い合わせ.ccからのメールです")
    @body = body

    args = {
      to: to,
      subject: subject,
      reply_to: email
    }

    args[:cc] = cc if cc

    mail to: to, subject: subject, reply_to: email
  end

  def confirmation(to:)
    mail to: to, subject: "お問い合わせ.ccからの認証メールです"
  end
end
