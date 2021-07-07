# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  @@email_array = []
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    @@email_array.clear
    parser = @emails.split(/,?\s/)
    parser.collect do |email|
      @@email_array << email
    end
   @@email_array.uniq
  end
  
end