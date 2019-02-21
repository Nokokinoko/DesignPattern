class Computer
  attr_accessor :display, :motherboard
  attr_reader :drives
  
  def initialize( display = :crt, motherboard = Motherboard.new, drives = [] )
    @display = display
    @motherboard = motherboard
    @drives = drives
  end
end

class Cpu
  # CPU
end

class BasicCpu < Cpu
  # Basic CPU
end

class TurboCpu < Cpu
  # Turbo CPU
end

class Motherboard
  attr_accessor :cpu, :memory
  
  def initialize( cpu = BasicCpu.new, memory = 1000 )
    @cpu = cpu
    @memory = memory
  end
end

class Drive
  attr_reader :type, :size, :writable
  
  def initialize( type, size, writable )
    @type = type
    @size = size
    @writable = writable
  end
end