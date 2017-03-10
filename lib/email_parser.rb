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
    @emails = @emails.split(%r{[,\s]})
    @emails.delete_if{|email| email==""}
    temp = []
    @emails.each do |email|
      if not temp.include?(email)
        temp << email
      end
    end
    @email = temp
  end
end
