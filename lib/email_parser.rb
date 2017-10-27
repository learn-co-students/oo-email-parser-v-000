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
    emailArr = []
    @emails.split(/[\,,\s]\s?/).each{|e|
      if !emailArr.include?(e)
        emailArr << e
      end
    }
    #emailArr.to_Set
    emailArr
  end

end
