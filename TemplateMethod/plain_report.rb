require './abstract_report'

class PlainReport < AbstractReport
  def output_title
    p "---#{@title}---"
  end
  
  def output_body
    @body.each do |val|
      p "#{val}"
    end
  end
end