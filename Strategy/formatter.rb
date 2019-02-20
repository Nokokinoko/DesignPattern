class Formatter
  def output_report( context )
    raise 'Please implement: output_report'
  end
end

class HtmlFormatter < Formatter
  def output_report( context )
    p "<title>#{context.title}</title>"
    p "<body>"
    context.body.each do |val|
      p "<p>#{val}</p>"
    end
    p "</body>"
  end
end

class PlainFormatter < Formatter
  def output_report( context )
    p "---#{context.title}---"
    context.body.each do |val|
      p "#{val}"
    end
  end
end