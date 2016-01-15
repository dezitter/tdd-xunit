require 'assert'

class TestCase
  include Assert

  def initialize(name)
    @name = name
  end

  def setup
  end

  def run
    setup
    send(@name)
    teardown
  end

  def teardown
  end

end
