# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :email


  def initialize(emails)
    @email = emails
  end

  def parse
    array = @email.scan(/[\w+\-.]+@[a-z\d\-]+\.[a-z]+/)
    array = array.flatten
    array = array.uniq
    array
  end

end

emails = "john@doe.com, person@somewhere.org"
parser = EmailParser.new(emails)

puts parser.parse


