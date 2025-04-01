
require Rails.root.join("lib/event_bus")
require Rails.root.join("app/subscribers/send_welcome_email")
require Rails.root.join("app/subscribers/log_user_registered")

EventBus.subscribe('user.registered', SendWelcomeEmail.new)
EventBus.subscribe('user.registered', LogUserRegistered.new)
