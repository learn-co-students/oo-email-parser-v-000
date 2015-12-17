# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # Make a new array fom the EmailParser.new(argument) and split and iterate the emails. 
    parsed_email_addresses = emails.split.collect do |email|
      email.split(",")
    end
    # Return the the parsed_email_addresses array so that their are no doubles of an email address
    parsed_email_addresses.flatten.uniq
  end
end
