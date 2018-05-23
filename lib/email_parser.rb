# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails_raw

  def initialize(emails_raw)
    @emails_raw = emails_raw
  end

  def parse
    emails_list = emails_raw.split(", ")
    emails_list.uniq
  end


end
