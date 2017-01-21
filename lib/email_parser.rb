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
    parsed = []
    list = @emails.split(" ")
    list.each {|email| email.delete!(",")}
    list.each do |email|
      if !parsed.include?(email)
        parsed << email
      end
    end
    parsed
  end

end
