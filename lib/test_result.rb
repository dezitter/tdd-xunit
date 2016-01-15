class TestResult

  def initialize
    @runCount = 0
  end

  def test_started
    @runCount += 1
  end

  def summary
    "#{@runCount} run, 0 failed"
  end

end
