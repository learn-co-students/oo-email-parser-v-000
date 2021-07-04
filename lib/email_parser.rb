# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails 
  end 
  
  def parse
    # I should be able to parse an email that is separated either with a comma or whitespace 
    @emails.split.map do |email| # This first separates and maps the individual emails into an array. 
      email.split(",") # This then takes those emails and makes sure to separate them with a comma.
    end.flatten.uniq # This takes the newly created array of emails and flattens them into one singular array.
  end                # Uniq makes sure that any doubles are removed.
end 