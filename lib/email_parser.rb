# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser
  attr_accessor :emails

#returns an array of clean emails
  def parse
    emails.scan(/[^ ,]+/).uniq
  end

  def initialize(emails)
    @emails = emails
  end

end
