class ApplicationMailer < ActionMailer::Base
  def initialize
    @send_in_blue = SibApiV3Sdk::TransactionalEmailsApi.new
    @email = SibApiV3Sdk::SendSmtpEmail.new
  end

  def sender_email
    "contact@sianoavocats.com"
  end

  def sender_name
    "Siano Avocats"
  end
end
