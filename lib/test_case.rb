require 'assert'
require 'test_result'

class TestCase
  include Assert

  def initialize(name)
    @name = name
  end

  def setup
  end

  def run(result)
    result.test_started()

    setup
    begin
      send(@name)
    rescue Exception
      result.test_failed()
    end
    teardown
  end

  def teardown
  end

end
