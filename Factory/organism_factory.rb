class PondOrganismFactory
  def new_animal( name )
    Duck.new( name )
  end
  
  def new_plant( name )
    WaterLily.new( name )
  end
end

class JungleOrganismFactory
  def new_animal( name )
    Tiger.new( name )
  end
  
  def new_plant( name )
    Tree.new( name )
  end
end

class Duck
  def initialize( name )
    @name = name
  end
  
  def eat
    p "duck #{name} is eating"
  end
  
  def sleep
    p "duck #{name} is sleeping"
  end
end

class WaterLily
  def initialize( name )
    @name = name
  end
  
  def grow
    p "water lily #{name} is growing"
  end
end

class Tiger
  def initialize( name )
    @name = name
  end
  
  def eat
    p "tiger #{name} is eating"
  end
  
  def sleep
    p "tiger #{name} is sleeping"
  end
end

class Tree
  def initialize( name )
    @name = name
  end
  
  def grow
    p "tree #{name} is growing"
  end
end