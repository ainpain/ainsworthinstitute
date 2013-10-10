class InquiriesController < ApplicationController

  def create
    email = params[:email]
    inquiry = {name: params[:name], email: params[:email], phone: params[:phone], pain: params[:pain]}
    if inquiry[:email] != ''
      User.find_or_create_by_email(email)
      Notifications.contact_us_email(inquiry).deliver
      Notifications.inquiry_confirmation(inquiry).deliver
    end
    return
  end

end