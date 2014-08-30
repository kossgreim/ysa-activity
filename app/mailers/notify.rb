class Notify < ActionMailer::Base
  default from: "ysapraha2014@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notify.welcome.subject
  #
  def welcome(registration)
    @registration = registration

    mail to: registration.email, subject: 'Welcome to YSA WEEKEND 2014 Prague'
  end
end
