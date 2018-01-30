class Bear
  attr_reader :name

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = [ ]
  end

  def roar
    return "I am #{@name}, the #{@type} bear. Hear me roar!"
  end

  def food_count
    return @stomach.length
  end

  def catch_fish(fish)
    @stomach << fish
  end

  def fish_from_river(river)
    for fish in @river.get_queue_copy()
      catch_fish(fish)
    end
    @river.clear_fish
  end
end
