# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  parsed = []
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.map do |email|
      email.split(",")
    end.flatten.uniq
  # Alternate solution:
    # parsed = []
    # parsed_with_duplicates = emails.gsub(/,/, " ").split.each do |email|
    #   unless parsed.include?(email)
    #   parsed << email
    #   end
    # end
    # parsed
  end

end
