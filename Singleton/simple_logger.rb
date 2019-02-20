class SimpleLogger
  private_class_method :new
  attr_accessor :level
  
  ERROR = 1
  WARNING = 2
  INFO = 3
  
  @@instance = SimpleLogger.new
  
  def self.instance
    return @@instance
  end
  
  def initialize
    @log = File.open( 'log.txt', 'w' )
    @level = WARNING
  end
  
  def error( msg )
    @log.puts( msg )
    @log.flush
  end
  
  def warning( msg )
    @log.puts( msg ) if WARNING <= @level
    @log.flush
  end
  
  def info( msg )
    @log.puts( msg ) if INFO <= @level
    @log.flush
  end
end