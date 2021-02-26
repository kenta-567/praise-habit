# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact
     contact = Contact.new(name: "侍 太郎", email: "system@example.com", message: "問い合わせメッセージ")

     ContactMailer.received_email(contact)
  end

end
