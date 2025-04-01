# app/subscribers/send_welcome_email.rb
class SendWelcomeEmail
  def call(user:)
    puts "📧 Sending welcome email to #{user.email}"
  end
end
