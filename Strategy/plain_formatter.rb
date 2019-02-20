require './abstract_formatter'

class PlainFormatter < AbstractFormatter
  def output_report( context )
    p "---#{context.title}---"
    context.body.each do |val|
      p "#{val}"
    end
  end
end