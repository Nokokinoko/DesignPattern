require './abstract_report'

class HtmlReport < AbstractReport
  def output_title
    p "<title>#{@title}</title>"
  end
  
  def output_body
    @body.each do |val|
      p "<p>#{val}</p>"
    end
  end
  
  def output_body_start
    p "<body>"
  end
  
  def output_body_end
    p "</body>"
  end
end