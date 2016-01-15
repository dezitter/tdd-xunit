require 'test_case'

class WasRun < TestCase
  attr_reader :wasRun

  def initialize(name)
    super(name)
    @wasRun = false
  end

  def test_method
    @wasRun = true
  end

end
