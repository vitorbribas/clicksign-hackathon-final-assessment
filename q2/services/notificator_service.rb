# frozen_string_literal: true

require_relative './../lib/email_client'
require_relative './../lib/sms_client'
require_relative './../lib/whatsapp_client'

class NotificatorService
  class << self
    def send_message(message)
      EmailClient.dispatch(message)
      SmsClient.dispatch(message)
      WhatsappClient.dispatch(message)
    end
  end
end
