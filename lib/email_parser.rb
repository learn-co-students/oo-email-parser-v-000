# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#parse method return array of emails
require 'pry'

class EmailParser
  # attr_accessor :email
# @@all = []
  def initialize(emails)
    @emails = emails
  end
# binding.pry
  def parse
    a = @emails.split(/[\s,]/)
    a.uniq.reject{|c| c.empty?}
  end





end
