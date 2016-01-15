require 'test_case'
require 'was_run'

class TestCaseTest < TestCase

  def test_template_method
    test = WasRun.new("test_method")
    test.run()
    assert { [:setup, :run, :teardown] == test.log }
  end

  def test_result
    test = WasRun.new("test_method")
    result = test.run()
    assert { "1 run, 0 failed" == result.summary }
  end

  def test_failed_result
    test = WasRun.new("test_broken_method")
    result = test.run()
    assert { "1 run, 1 failed" == result.summary }
  end

end

TestCaseTest.new('test_template_method').run
TestCaseTest.new('test_result').run
#TestCaseTest.new('test_failed_result').run
