class Bears

attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def fish_in_stomach()
  return @stomach.count
end

def add_fish(new_fish)
  @stomach.push(new_fish)
end

def can_roar
  return "Roar!"
end


end
