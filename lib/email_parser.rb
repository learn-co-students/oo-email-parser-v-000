# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  def parse
    @parsed = @emails.split(/, | /)
    @parsed.uniq
  end

  def initialize(emails)
    @emails = emails 
  end
  
end