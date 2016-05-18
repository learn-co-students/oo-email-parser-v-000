# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_reader :email_addresses

  def initialize(addresses)
    @email_addresses = addresses
  end

  def parse
    email_addresses.split.map do |emails|
      emails.split(",")
    end.flatten.uniq
  end
end