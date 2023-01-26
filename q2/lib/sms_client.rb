# frozen_string_literal: true

class SmsClient
  class << self
    def dispatch(message)
      puts "Sending notification '#{message}' by SMS..."
    end
  end
end
