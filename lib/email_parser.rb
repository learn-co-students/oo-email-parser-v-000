# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_emails = []
    comma_parsed = @emails.split(",")
    comma_parsed.each do |email|
      parsed_emails << email.split(" ")
    end
    final_parsed = parsed_emails.flatten.uniq
    final_parsed
  end
end







=begin
def initialize(email_string)
  @emails = []
end

binding.pry

def add_if_unique
  #adds an email if its not yet in array
  if @@email.include?(self) == false
    @@emails << self
  end
end

def self.parse
  #determine if csv or space delimited and parse with correct parser
  if emails.include?(",")
    parsed_emails = emails.split(",")
  else
    parsed_emails = emails.split(" ")
  end

  #post-process as needed
  parsed_emails = parsed_emails.map {|email| email.strip }
  #add each parsed email to @@emails if unique
  parsed_emails.each do |email|
    email.add_if_unique
  end
  @@emails
end
=end
