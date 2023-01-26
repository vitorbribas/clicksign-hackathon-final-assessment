# frozen_string_literal: true

require_relative 'processors/json_processor'
require_relative 'processors/pdf_processor'
require_relative 'processors/xml_processor'

class MainProcessor
  PROCESSORS = {
    json: JsonProcessor,
    pdf: PdfProcessor,
    xml: XmlProcessor
  }.freeze

  def write(type)
    processor = PROCESSORS[type]
    raise "Ops... not supported file format #{type}" unless processor

    processor.new.write
  end
end
