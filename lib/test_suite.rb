class TestSuite

  def initialize
    @tests = []
  end

  def <<(test)
    @tests << test
  end

  def run(result)
    @tests.each { |t| t.run(result) }
  end

end
