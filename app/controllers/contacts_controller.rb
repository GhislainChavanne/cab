class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def create
    @form = ContactForm.new(contact_params)

    if @form.valid?
      ContactMailer.contact_email(@form.to_hash).deliver_now
      redirect_to root_path, notice: 'Votre message a bien été envoyé.'
    else
      render 'pages/contact'
    end
  end

  private

  def contact_params
    params.require(:contact_form).permit(:name, :email, :subject, :body)
  end
end
