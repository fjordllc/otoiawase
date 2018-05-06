class PostsController < ApplicationController
  protect_from_forgery except: :create

  def create
    PostMailer.post(
      to: params[:to],
      email: params[:email],
      body: params[:body]
    ).deliver_now
  end
end
