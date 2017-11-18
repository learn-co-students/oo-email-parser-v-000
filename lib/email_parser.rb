# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails #set and get a list of emails

  def initialize(emails)
    @emails = emails
  end

  def parse #take in emails
    #split emails based on commas or whitespace
    emails.split.map do |email| #creates a new array with values from the block 
    email.split(',')
  end.flatten.uniq #form a new array
  end

end
