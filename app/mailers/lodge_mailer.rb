class LodgeMailer < ApplicationMailer
  def reserve_email(params)
    @lodge        = Lodge.find(params[:id])
    @checkin      = params[:checkin]
    @checkout     = params[:checkout]
    @keyword      = params[:keyword]
    @person_name  = params[:person_name]
    @person_code  = params[:person_code]
    @person_email = params[:person_email]
    @message      = params[:message]
    mail(to: ENV['MAIL_TO'], cc: ENV['MAIL_CC'], subject: "RubyKaigi2016から町屋のお申し込みのお知らせ")
  end

  def thanks_email(params)
    @lodge        = Lodge.find(params[:id])
    @checkin      = params[:checkin]
    @checkout     = params[:checkout]
    @keyword      = params[:keyword]
    @person_name  = params[:person_name]
    @person_code  = params[:person_code]
    @person_email = params[:person_email]
    @message      = params[:message]
    mail(to: params[:person_email], cc: ENV['MAIL_CC'], subject: "Thank you for making your reservation!")
  end
end
