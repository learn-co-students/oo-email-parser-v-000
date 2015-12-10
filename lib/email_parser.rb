# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser
  attr_accessor :emails
 
  def initialize(emails_string)
    @emails_string = emails_string
  end
  def parse        
    return @emails_string.split(%r{,\s*|\s+}).uniq #checks for ",", ", " or " " in regex pattern, returns array with unique values
  end
    
end