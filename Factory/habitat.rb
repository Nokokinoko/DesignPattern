require './organism_factory'

class Habitat
  def initialize( factory )
    @factory = factory
    @animal = @factory.new_animal('animal_a')
    @plant = @factory.new_plant('plant_a')
  end
  
  def simulate_one_day
    @animal.eat
    @animal.sleep
    @plant.grow
  end
end