# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails_string

  def initialize(emails_string)
    @emails_string = emails_string
  end

  def parse
    @emails_string.split(" ").collect do |email|
      email.gsub(",", "")
    end.uniq
  end
end
