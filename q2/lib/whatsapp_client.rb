# frozen_string_literal: true

class WhatsappClient
  class << self
    def dispatch(message)
      puts "Sending notification '#{message}' by Whatsapp..."
    end
  end
end
