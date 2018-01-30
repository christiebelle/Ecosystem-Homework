class River
  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def name
    return "#{@name}"
  end

  def fish_count
    return @fish.length
  end

def add_fish_to_river(fish)
  @fish << fish
end

def clear_fish(river)
  river.clear
end

end
