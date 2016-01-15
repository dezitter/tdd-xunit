require 'test_case'
require 'test_suite'
require 'was_run'

class TestCaseTest < TestCase

  def setup
    @result = TestResult.new
  end

  def test_template_method
    test = WasRun.new("test_method")
    test.run(@result)
    assert { [:setup, :run, :teardown] == test.log }
  end

  def test_result
    test = WasRun.new("test_method")
    test.run(@result)
    assert { "1 run, 0 failed" == @result.summary }
  end

  def test_failed_result
    test = WasRun.new("test_broken_method")
    test.run(@result)
    assert { "1 run, 1 failed" == @result.summary }
  end

  def test_failed_result_formatting
    result = TestResult.new
    result.test_started()
    result.test_failed()
    assert { "1 run, 1 failed" == result.summary }
  end

  def test_suite
    suite = TestSuite.new
    suite << WasRun.new("test_method")
    suite << WasRun.new("test_broken_method")
    result = TestResult.new
    suite.run(result)
    assert { "2 run, 1 failed" == result.summary }
  end

end

suite = TestSuite.new
result = TestResult.new

suite << TestCaseTest.new('test_template_method')
suite << TestCaseTest.new('test_result')
suite << TestCaseTest.new('test_failed_result')
suite << TestCaseTest.new('test_failed_result_formatting')
suite << TestCaseTest.new('test_suite')

suite.run(result)
puts result.summary
