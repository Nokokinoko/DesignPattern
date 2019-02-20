class StringIOAdapter
  def initialize( string )
    @string = string
    @position = 0
  end
  
  def getc
    raise EOFError if eof?
    ch = @string[@position]
    @position += 1
    return ch
  end
  
  def eof?
    return @string.length <= @position
  end
end