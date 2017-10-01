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
    parseable_emails = emails.split(/[\' '\,]/)
    parseable_emails.each do |email|
      parsed_emails << email if email.match(/[.]/)
    end
    parsed_emails.uniq
  end
end
