# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    if @emails.include? ","
      reformatted = @emails.split(/\s/)
      reformatted.map { |e| e.delete! ","  }
    else
      reformatted = @emails.split(/\s/)
    end
    reformatted.uniq
  end

end