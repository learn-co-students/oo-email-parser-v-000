# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails


  def initialize(emails)
    @emails = emails

    #string of unique emails upon initialization
  end

  def parse 
    #working on a string
    ary = @emails.split(/, |\s/)
    ary.uniq

  

    
    #return an array with separated emails
  end


end