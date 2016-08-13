class LodgeMailer < ApplicationMailer
  def reserve_email
    mail(to: ENV['MAIL_TO'], subject: "お申し込みのお知らせ")
  end

  def thanks_email(email)
    mail(to: email, subject: "Thank you for your reservation!")
  end
end
