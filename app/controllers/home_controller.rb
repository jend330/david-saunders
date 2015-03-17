class HomeController < ApplicationController
  def index
  end

  def meet
  end

  def lessons
  end

  def tips
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @time = params[:time]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'DSaunders@pga.com', :subject => "A new contact form message from #{@name}", :body => @message).deliver
  end
end
