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
    #emails.split(", ") || emails.split(" ")
    emails.split(/,?\s|,/).uniq 
    # Splits the e-mail at " " or ", " or "," and returns an array of unique emails
  end
end