# frozen_string_literal: true

require_relative 'processors/json_processor'
require_relative 'processors/csv_processor'

class MainProcessor
  PROCESSORS = {
    json: JsonProcessor,
    csv: CsvProcessor
  }.freeze

  def write(data, type)
    processor = PROCESSORS[type]
    raise "Ops... not supported file format #{type}" unless processor

    processor.new.write(data)
  end
end
