# frozen_string_literal: true

require_relative 'services/notificator_service'

message = 'My first notification here.'
NotificatorService.send_message(message)
