class Notifications < ApplicationMailer




 default from: "from@example.com"

 def new_account(user)
    @user = user
    attachments['rails.png'] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail(:to => user.email,
         :subject => "The new account #{user.name} is active.")
  end
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.signup.subject
  #
  def signup
    @greeting = "Hi"

    mail to: "ajayashok.01@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.forgot_password.subject
  #
  def forgot_password
    @greeting = "Hi"

    mail to: "ajayashok.01@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.invoice.subject
  #
  def invoice
    @greeting = "Hi"

    mail to: "ajayashok.01@gmail.com"
  end
end
