class Encrypter
  def initialize( key )
    @key = key
  end
  
  def encrypt( reader, writer )
    index = 0
    while not reader.eof?
      clear_char = reader.getc
      encrypted_char = clear_char ^ @key[index]
      writer.putc encrypted_char
      index = ( index + 1 ) % @key.size
    end
  end
end