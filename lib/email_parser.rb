# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require "pry"
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    self.emails=emails
  end

  def parse
    emails.gsub(/(?!\w)\s*\,*\s*(?<!\w)/,",").split(',').uniq
  end
end
