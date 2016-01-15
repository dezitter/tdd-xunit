require 'test_case'

class WasRun < TestCase
  attr_reader :wasRun, :wasSetUp

  def setup
    @wasRun = false
    @wasSetUp = true
  end

  def test_method
    @wasRun = true
  end

end
