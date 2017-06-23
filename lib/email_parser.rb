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
    #split on "," and " " 
    @emails = @emails.split(/\b[,\s]/)
    #iterate thru and trim the extra spaces
    @emails.collect {|email| email.strip!}
    #remove the dupes
    @emails.uniq
  end
end
