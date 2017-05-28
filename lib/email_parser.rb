# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_parser
  def initialize(email_parser)
    @email_parser = []
    @split = email_parser.split(" ")
    @split.each  do |string|
      if string.end_with?(",")
        string.chop!
      end
      @email_parser << string if(!@email_parser.include?(string))
    end
  end
  def parse
    @email_parser
  end
end
