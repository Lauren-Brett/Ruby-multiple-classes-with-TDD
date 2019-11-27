class River

attr_reader :name, :fish

def initialize(name, fish)
  @name = name
  @fish = fish
end


def amount_fish_in_river
  @fish.length
end

def remove_fish(remove_fish)
  @fish.delete(remove_fish)
end

end
