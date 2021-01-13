class Contact < MailForm::Base
  include MailForm::Delivery
  attribute :nom,      :validate => true, :message => "blah blah blah"
  attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, :presence => true
  attribute :sujet,    :validate => true
  attribute :message,  :validate => true
  attribute :nickname, :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Prise de contact - Chavanne & Witt",
      :to => "chavanne@cw-avocats.com, witt@cw-avocats.com, tarde@cw-avocats.com, sarron@cw-avocats.com, contact@cw-avocats.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
