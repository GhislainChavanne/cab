class Contact < MailForm::Base
  include MailForm::Delivery
  attribute :nom,      :validate => true, :message => "blah blah blah"
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :sujet,      :validate => true
  attribute :message,     :validate => true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Prise de contact - Chavanne & Witt",
      :to => "gh.chavanne@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
