class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
        :to => 'DSaunders@golftec.com',
        :subject => "A new contact form message from #{name}")
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @time = params[:time]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @phone, @time, @message).deliver
  end
end