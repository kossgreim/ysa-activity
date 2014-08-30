# Preview all emails at http://localhost:3000/rails/mailers/notify
class NotifyPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notify/welcome
  def welcome
    Notify.welcome
  end

end
