class PostsController < ApplicationController
  protect_from_forgery except: :create

  def create
    args = {
      to: params[:to],
      email: params[:email],
      body: params[:body],
    }

    args[:cc] = params[:_cc] if params[:_cc]
    args[:thanks] = params[:_thanks] if params[:_thanks]

    form = Form.find_by(email: params[:email])
    if form.blank?
      form.site = request.referer
      form.create!
    end

    if form.confirmed_at?
      PostMailer.post(args).deliver_now
      redirect_to domain_from(request.referer) + params[:_thanks] if params[:_thanks]
    else
      PostMailer.confirmation(to: params[:email], form: form).deliver_now
    end
  end

  private
    def domain_from(url)
      a = Addressable::URI.parse(url)
      port = a.port == 80 ? "" : ":#{a.port}"
      "#{a.scheme}//#{a.host}#{port}"
    end
end
