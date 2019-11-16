# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'set'

class EmailParser


  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split(/[,\s]+/).map{|x| x.strip}.to_set.to_a
  end
end
