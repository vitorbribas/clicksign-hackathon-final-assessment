# frozen_string_literal: true

class NaturalPerson < Person
  def validate_doc
    puts "Validating CPF #{documentation}...."
  end
end
