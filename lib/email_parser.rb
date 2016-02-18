# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails
  def initialize(email_string)
    @emails = email_string
  end

  def parse
    new_array = @emails.split(/[,\s]/).uniq.reject { |e| e.to_s.empty? }
    new_array
  end

end