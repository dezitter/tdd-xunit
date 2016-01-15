require 'test_case'

class WasRun < TestCase
  attr_reader :log

  def setup
    @log = [:setup]
  end

  def test_method
    @log << :run
  end

  def test_broken_method
    raise Exception
  end

  def teardown
    @log << :teardown
  end

end
