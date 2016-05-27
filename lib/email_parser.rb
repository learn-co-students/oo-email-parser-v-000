# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    array = @emails.split(/[,\s]/)
    array.uniq.reject(&:empty?)
  end

end


#take in a string
#split it into array based on spaces or commas
#return this array, with .unique

