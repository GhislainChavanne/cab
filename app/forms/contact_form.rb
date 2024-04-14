class ContactForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  ATTRIBUTES = [:name, :email, :subject, :body]
  attr_accessor(*ATTRIBUTES)

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :subject, presence: true
  validates :body, presence: true

  def to_hash
    {
      name: name,
      email: email,
      subject: subject,
      body: body
    }
  end
end