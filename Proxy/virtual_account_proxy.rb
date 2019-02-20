class VirtualAccountProxy
  def initialize( &creation_block )
    # 口座作成コードブロックを渡す
    @creation_block = creation_block
  end
  
  # deposit, withdraw, balance
  def method_missing( name, *args )
    subject
    @subject.send( name, *args )
  end
  
  def subject
    # 口座がなければ作成
    @subject ||= @creation_block.call
  end
end