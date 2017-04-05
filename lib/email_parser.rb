# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  def initialize(emails)
    @parser = emails
  end

  def parse
    parse_arr = nil
    @parser.gsub!(",","")
    parse_arr = @parser.split(" ")
    parse_arr.uniq
  end
end
