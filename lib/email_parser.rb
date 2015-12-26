# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    split_array = emails.split(/(,|\s)/)
    parsed = split_array.reject { |i| i.length < 2 }
    parsed.uniq
  end

end