class Fish
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    return "#{@name}"
  end

  def fish_sing
    return "Under the sea, under the sea!"
  end

end
