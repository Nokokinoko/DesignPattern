class WriterDecorator
  def initialize( real_writer )
    @real_writer = real_writer
  end
  
  def write_line( line )
    @real_writer.write_line( line )
  end
  
  def pos
    @real_writer.pos
  end
  
  def rewind
    @real_writer.rewind
  end
  
  def close
    @real_writer.close
  end
end

class NumberingWriter < WriterDecorator
  def initialize( real_writer )
    super( real_writer )
    @line_number = 1
  end
  
  def write_line( line )
    @real_writer.write_line( "#{@line_number}: #{line}" ) # 行番号
    @line_number += 1
  end
end

class TimeStampingWriter < WriterDecorator
  def initialize( real_writer )
    super( real_writer )
  end
  
  def write_line( line )
    @real_writer.write_line( "#{Time.new}: #{line}" ) # タイムスタンプ
  end
end