# frozen_string_literal: true

class TypeOne
  def match?(type)
    type == 'TIPO1'
  end

  def call
    puts 'Executa ação TIPO1'
  end
end

class TypeTwo
  def match?(type)
    type == 'TIPO2'
  end

  def call
    puts 'Executa ação TIPO2'
  end
end

class TypeThree
  def match?(type)
    type == 'TIPO3'
  end

  def call
    puts 'Executa ação TIPO3'
  end
end

class TypeFour
  def match?(type)
    type == 'TIPO4'
  end

  def call
    puts 'Executa ação TIPO4'
  end
end

class TypeFive
  def match?(type)
    type == 'TIPO5'
  end

  def call
    puts 'Executa ação TIPO5'
  end
end

class TypeSix
  def match?(type)
    type == 'TIPO6'
  end

  def call
    puts 'Executa ação TIPO6'
  end
end

class Action
  def initialize(type)
    @type = type
  end

  def call
    types = [
      TypeOne.new,
      TypeTwo.new,
      TypeThree.new,
      TypeFour.new,
      TypeFive.new,
      TypeSix.new
    ]

    found_type = types.find { |t| t.match?(@type) }
    found_type.call
  end
end

Action.new('TIPO1').call
Action.new('TIPO2').call
Action.new('TIPO3').call
Action.new('TIPO4').call
Action.new('TIPO5').call
Action.new('TIPO6').call
