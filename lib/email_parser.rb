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
    @emails = @emails.gsub(","," ").split(" ")
    unique = []
    @emails.each do |e|
      if unique.include?("#{e}") == false
        unique << e
      end
    end
    unique
  end
end

#
# emails = "john@doe.com, person@somewhere.org avi@test.com john@doe.com"
# @emails = emails
# parser = EmailParser.new(emails)
#
# parser.parse
