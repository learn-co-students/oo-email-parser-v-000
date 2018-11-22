# class EmailParser accepts string of unformatted emails
# parse method on the class should separate them into
# unique email addresses.
# The delimiters to support are commas (',')
# or whitespace (' ').
# Output to produce:
# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)
# parser.parse
# => ["john@doe.com", "person@somewhere.org"]

class EmailParser
  attr_accessor :emails
  @@all = []

  def initialize(emails)
    @emails = emails
		#@@all << self
  end

  def self.all
    @@all << self
  end

#  emails = "john@doe.com, person@somewhere.org"
#  OR emails = "avi@test.com, arel@test.com test@avi.com,
# removes duplicate emails
  def parse
	   @emails.split(/, | /).uniq
  end

#class end below
end
