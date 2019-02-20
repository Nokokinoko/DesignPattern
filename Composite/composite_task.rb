require './task'

class CompositeTask < Task
  def initialize( name )
    super( name )
    @sub_tasks = []
  end
  
  def add_sub_task( task )
    @sub_tasks << task
  end
  
  def remove_sub_task( task )
    @sub_tasks.delete( task )
  end
  
  def get_time_required
    time = 0.0
    @sub_tasks.each { |task| time += task.get_time_required }
  end
end

class MakeBatterTask < CompositeTask
  def initialize
    super( 'make batter' )
    add_sub_task( AddDryIngredientsTask.new )
    add_sub_task( MixTask.new )
  end
end