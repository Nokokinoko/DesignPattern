class Report
  def initialize
    @title = 'title1'
    @body = [ 'body1', 'body2' ]
  end
  
  def output_report
    output_title
    output_body_start
    output_body
    output_body_end
  end
  
  # Please override if necessary
  def output_title
    raise 'Please implement: output_title'
  end
  
  def output_body
    raise 'Please implement: output_body'
  end
  
  def output_body_start
  end
  
  def output_body_end
  end
end

class HtmlReport < Report
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

class PlainReport < Report
  def output_title
    p "---#{@title}---"
  end
  
  def output_body
    @body.each do |val|
      p "#{val}"
    end
  end
end