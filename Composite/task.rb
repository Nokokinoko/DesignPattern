class Task
  attr_reader :name
  
  def initialize( name )
    @name = name
  end
  
  def get_time_required
    0.0
  end
end

class AddDryIngredientsTask < Task
  def initialize
    super( 'add dry ingredients' )
  end
  
  def get_time_required
    1.0
  end
end

class MixTask < Task
  def initialize
    super( 'mix that batter up!' )
  end
  
  def get_time_required
    3.0
  end
end