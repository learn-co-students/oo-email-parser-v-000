# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  
  @@all = []
  
  attr_accessor 
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails_array = @emails.split(/(\s|,\s)/)
    emails_array.delete_if { |element| element == ", " || element == " "}
    emails_array.uniq
  end
  
end