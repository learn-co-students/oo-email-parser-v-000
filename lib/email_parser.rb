# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  def initialize(emails)
    @emails = emails
    @@array << emails
  end
  attr_accessor :emails
  @@array = []

  def self.parse
    @@array


  end


end
