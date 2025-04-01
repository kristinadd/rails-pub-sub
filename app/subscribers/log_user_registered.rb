class LogUserRegistered
  def call(user:)
    puts "📝 User registered: #{user.email}"
  end
end
