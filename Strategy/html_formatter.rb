require './abstract_formatter'

class HtmlFormatter < AbstractFormatter
  def output_report( context )
    p "<title>#{context.title}</title>"
    p "<body>"
    context.body.each do |val|
      p "<p>#{val}</p>"
    end
    p "</body>"
  end
end