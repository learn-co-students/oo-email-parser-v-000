require "pry"
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  # i will be parsing emails next =
  def parse
    array = emails.gsub(",", "").split(" ").uniq
  end
end
#binding.pry

=begin
class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
=end
