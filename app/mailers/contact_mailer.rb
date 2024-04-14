class ContactMailer < ApplicationMailer
  def contact_email(data)
    form = ContactForm.new(data)

    send_email(form)
  end

  private

  def send_email(form)
    @email.tap do |e|
      e.subject = form.subject
      e.html_content = body(form)
      e.sender = { email: form.email, name: form.name }
      e.to = [{ email: "contact@sianoavocats.com" }]
    end

    @send_in_blue.send_transac_email(@email)
  end

  def body(form)
    render_to_string(
      template: "contact_mailer/contact_email",
      layout: 'mailer',
      locals: { 
        form: form 
      }
    )
  end
end
