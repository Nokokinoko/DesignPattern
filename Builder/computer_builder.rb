require './computer'

class ComputerBuilder
  attr_reader :computer
  
  def initialize
    @computer = Computer.new
  end
  
  def turbo( has_turbo_cpu = true )
    @computer.motherboard.cpu = has_turbo_cpu ? TurboCpu.new : BasicCpu.new
  end
  
  def display=( display )
    @computer.display = display
  end
  
  def memory=( memory )
    @computer.motherboard.memory = memory
  end
  
  def add_cd( writable = false )
    @computer.drives << Drive.new( :cd, 760, writable )
  end
  
  def add_dvd( writable = false )
    @computer.drives << Drive.new( :dvd, 4000, writable )
  end
  
  def add_hdd( size )
    @computer.drives << Drive.new( :hdd, size, true )
  end
end