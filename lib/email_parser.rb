
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  @@all = []
  def initialize(emails)
    @emails = emails
  end

  def parse
    @@all = emails.split(",").join(" ").split.uniq #split into an array at each comma, join into a string with space separating each one, split into an array if it's unique
  end

end
