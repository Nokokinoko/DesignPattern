require './abstract_formatter'

class Report
  attr_reader :title, :body
  attr_accessor :formatter # 集約
  
  def initialize( formatter )
    @title = 'title1'
    @body = [ 'body1', 'body2' ]
    @formatter = formatter
  end
  
  def output_report
    @formatter.output_report( self ) # 委譲
  end
end