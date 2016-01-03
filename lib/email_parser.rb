# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end

  def parse
    split_at_spaces = @emails.split(" ")
    no_commas = split_at_spaces.collect do |email|
      email.chomp(",")
    end
    return no_commas.uniq
  end
end