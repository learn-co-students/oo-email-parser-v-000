# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed_emails = emails.split(/\s|[,]/)
    parsed_emails.delete("")
    #can't put the bang operator (!) at the end of .uniq here because if there are no duplicates, the return value is nil. 
    parsed_emails.uniq

    #can refactor above code to the following:
    #emails.split(/,*\s/).uniq
  end

end