require 'test_case'

class WasRun < TestCase
  attr_reader :log

  def setup
    @log = [:setup]
  end

  def test_method
    @log << :run
  end

  def teardown
    @log << :teardown
  end

end
