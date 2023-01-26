# frozen_string_literal: true

require_relative 'lib/main_processor'

processor = MainProcessor.new
processor.write(:json)
processor.write(:pdf)
processor.write(:xml)
