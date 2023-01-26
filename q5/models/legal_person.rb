# frozen_string_literal: true

class LegalPerson < Person
  def validate_doc
    puts "Validating CNPJ #{documentation}...."
  end
end
