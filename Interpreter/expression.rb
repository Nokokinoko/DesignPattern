require 'find'

class Expression
end

class All < Expression
  def evaluate( dir )
    results = []
    Find.find( dir ) do |val|
      next unless File.file?( val )
      results << val
    end
    results
  end
end

class FileName < Expression
  def initialize( pattern )
    @pattern = pattern
  end
  
  def evaluate( dir )
    results = []
    Find.find( dir ) do |val|
      next unless File.file?( val )
      name = File.basename( val )
      results << val if File.fnmatch( @pattern, name )
    end
  end
end