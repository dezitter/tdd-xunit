class TestResult

  def initialize
    @runCount = 0
    @errorCount = 0
  end

  def test_started
    @runCount += 1
  end

  def test_failed
    @errorCount += 1
  end

  def summary
    "#{@runCount} run, #{@errorCount} failed"
  end

end
