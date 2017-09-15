# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    @emails = []

    @emails << emails
  end

  def parse
    @emails.join.split(/[\s,]+/).uniq
  end

end


# emails = "john@doe.com, john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)

# emails = "avi@test.com", "arel@test.com","test@avi.com", "test@arel.com"
