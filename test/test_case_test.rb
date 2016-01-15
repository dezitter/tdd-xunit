require 'test_case'
require 'was_run'

class TestCaseTest < TestCase

  def test_template_method
    test = WasRun.new("test_method")
    test.run()
    assert { [:setup, :run, :teardown] == test.log }
  end

end

TestCaseTest.new('test_template_method').run
