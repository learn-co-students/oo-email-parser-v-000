# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  def initialize(emails)

    @emails = emails

  end
  attr_accessor :emails

  def parse
    #  binding.pry
    rows = emails.split(", ")
    s = rows.join(" ")
    r = s.split(" ")
    r.uniq


  end


end
