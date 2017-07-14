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
    # how can we convert a string to an array and split up the words to elements
    # what about gsub? , gsub('character it's finding', 'what it's replcaing with')
    @emails.gsub(",", "").split(" ").uniq
  end


end
