class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
    
  def parse
    emails.split.map do |e|
      e.split(',') || e.split(' ')
    end.flatten.uniq
  end
end

end


# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
