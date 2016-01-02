# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :parsed_emails, :unparsed_input

  def initialize(emails_unparsed)
    @unparsed_input = emails_unparsed
  end

  def csv_split(emails)
    emails.split(", ")
  end

  def space_split(emails)
    emails.split(" ")
  end

  def parse
    parsed = []

    csv_split(@unparsed_input).each do |email|
      parsed << space_split(email)
    end

    parsed.flatten!.uniq!
    @parsed_emails = parsed
    parsed
  end

end