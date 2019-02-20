require 'etc'

class ProtectAccountProxy
  def initialize( real_account, owner_name )
    @subject = real_account
    @owner_name = owner_name
  end
  
  # deposit, withdraw, balance
  def method_missing( name, *args )
    check_access
    @subject.send( name, *args )
  end
  
  def check_access
    # ETCモジュールを用いて現在のユーザ名と比較
    if Etc.getlogin != @owner_name
      raise "Illegal access: #{Etc.getlogin}"
    end
  end
end