# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :emails
  @@all = []



  def initialize(emails)
    @emails = emails
    @@all << self
  end

  def parse
   list = @emails.split(/\, |\ /)
   list.uniq
 end
end

EmailParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com").parse
