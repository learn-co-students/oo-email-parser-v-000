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
    comma_split_emails = []
    space_split_emails = []

    comma_split_emails = emails.split(/[,]/)
    space_split_emails = comma_split_emails.collect do |email|
       email.split
    end

    parsed_emails = space_split_emails.flatten
    parsed_emails.uniq
  end
end
