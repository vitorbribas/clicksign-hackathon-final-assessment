# frozen_string_literal: true

class EmailClient
  class << self
    def dispatch(message)
      puts "Sending notification '#{message}' by email..."
    end
  end
end
