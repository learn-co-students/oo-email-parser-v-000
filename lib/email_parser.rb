# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
attr_reader :emails

  def initialize(csv_emails) #=> set values for instances
    @emails = csv_emails
  end
  
  def parse
    #binding.pry
    self.emails.gsub(",", " ").split.uniq
    
    #=> bang ( ! ) sets the object equal to its (method) return value; permanent change
  end
end