# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails.split(/\, | /)
  end
  
  def parse
    unique = []
    @emails.each do |email|
      if unique.include?(email)
        NIL
      else
        unique << email
      end
    end
    unique
  end
end