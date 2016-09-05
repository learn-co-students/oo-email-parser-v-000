# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed = @emails.split(" ")
    parsed.each_index do |i|
      parsed[i].delete! ","
    end
    if parsed.uniq == nil
      parsed
    else
      parsed.uniq
    end
  end
end
