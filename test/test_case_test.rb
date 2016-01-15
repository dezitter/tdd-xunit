require 'test_case'
require 'was_run'

class TestCaseTest < TestCase

  def setup
    @test = WasRun.new("test_method")
  end

  def test_running
    @test.run()
    assert { @test.wasRun }
  end

  def test_setup
    @test.run()
    assert { @test.wasSetUp }
  end

end

TestCaseTest.new('test_running').run
TestCaseTest.new('test_setup').run
