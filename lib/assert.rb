module Assert

  def assert(&block)
    raise unless yield
  end

end
