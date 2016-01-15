require 'assert'

class TestCase
  include Assert

  def initialize(name)
    @name = name
  end

  def run
    send(@name)
  end

end
