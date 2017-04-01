require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  #@@all = [] #mostly for storage

  def initialize(emails)
    @emails = emails
  end

  def parse
    new_emails = self.emails.split(", ").join(" ").split(" ").uniq
  end

end
