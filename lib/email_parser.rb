# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :parse
  
  def initialize(email_info)
      @parse = p_parse(email_info)
  end
  
  private
  
  def p_parse(str)
    @parse = str.split(/[[([\s]|[,][\s]*)]]/)
    @parse = (@parse.select{|e| e.length > 0}).uniq
  end
end