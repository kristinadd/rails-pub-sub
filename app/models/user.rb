class User < ApplicationRecord
  after_create :publish_registered_event

  private

  def publish_registered_event
    EventBus.publish('user.registered', user: self)
  end
end
