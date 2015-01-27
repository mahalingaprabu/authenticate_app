class Notifications < ActionMailer::Base

default :from => "kanimozhiradha@yahoo.com"
  def forgot_password(to, login, pass, sent_at = Time.now)
    @subject    = "Your password is ..."
    @recipients = to
    @from       = 'kanimozhiradha@yahoo.com'
    @sent_on    = sent_at
     @password=pass
    mail(:to => @recipients, :subject => @subject, :password => pass)

  end
end
