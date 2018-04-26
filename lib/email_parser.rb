# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  
  attr_accessor :name, :emails
  
  @@all = []
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    array_temp = []
    array_temp = @emails.split(/[,\s]+/)
    @@all = array_temp.uniq
    @@all
  end
  
  
  
  
end