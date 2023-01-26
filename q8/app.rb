# frozen_string_literal: true

require_relative 'lib/main_processor'

data = 'Data from another source'

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'CSV'
option = gets

MainProcessor.new.write(data, option.downcase.to_sym)
