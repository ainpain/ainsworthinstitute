class HomeController < ApplicationController

  def ebook
    email = params[:email]
    User.find_or_create_by_email(email)
    Notifications.ebook_email(email).deliver
    Notifications.ebook_notification(email).deliver
  end

end