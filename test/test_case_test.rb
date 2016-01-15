require 'test_case'
require 'was_run'

class TestCaseTest < TestCase

  def test_running
    test = WasRun.new("test_method")
    assert { not test.wasRun }
    test.run()
    assert { test.wasRun }
  end

end

TestCaseTest.new('test_running').run
