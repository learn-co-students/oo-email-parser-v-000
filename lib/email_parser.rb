# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    #split based on regular expression of comma or space characters
    #reject empty elements
    #omit duplicate elements with .uniq
    @emails.split(/[, ]/).reject{|i| i.empty?}.uniq 
  end
end