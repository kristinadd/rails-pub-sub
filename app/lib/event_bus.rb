module EventBus
  @subscribers = Hash.new { |h, k| h[k] = [] }

  class << self
    def subscribe(event_name, handler)
      @subscribers[event_name] << handler
    end

    def publish(event_name, **payload)
      handlers = @subscribers[event_name]
      handlers.each do |handler|
        handler.call(**payload)
      end
    end
  end
end
