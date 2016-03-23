class UserMailer < ApplicationMailer
  default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    mail :to => ENV["OWNER_EMAIL"]
    mail(from: @contact.email, :subject => "Website Contact")
    #mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end