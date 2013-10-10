class Notifications < ActionMailer::Base

  def contact_us_email(inquiry)
    @email = inquiry[:email]
    @name = inquiry[:name]
    @phone = inquiry[:phone]
    @pain = inquiry[:pain]
    if @email != ''
      mail :to => 'dr.chen@nycpmr.com', :from => 'info@ainpain.com', :subject => "Ainsworth Inquiry", :reply_to => @email
      mail :to => 'info@ainpain.com', :from => 'info@ainpain.com', :subject => "Ainsworth Inquiry", :reply_to => @email
    end
  end

  def inquiry_confirmation(inquiry)
    @email = inquiry[:email]
    @name = inquiry[:name]
    @phone = inquiry[:phone]
    @pain = inquiry[:pain]
    if @email != ''
      mail :to => @email, :from => 'info@ainpain.com', :subject => 'Inquiry Received!'
    end
  end

  def ebook_email(email)
    @email = email
    if @email != ''
      attachments['knee_home_exercise_ebook.pdf'] = File.read("#{Rails.root}/public/knee_home_exercise_ebook.pdf")
      mail :to => @email, :from => 'info@ainpain.com', :subject => 'Knee Pain Exercise eBook from Ainsworth Institute / Dr. Chen', :template_path=>'notifications', :template_name=>'ebook_email'
    end
  end

  def ebook_notification(email)
    @email = email
    mail :to => 'dr.chen@nycpmr.com', :from => 'info@ainpain.com', :subject => "eBook Download Notification", :body => "eBook downloaded by #{@email}"
  end

end