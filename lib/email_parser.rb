# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  # initialized with a string of emails
  def initialize(emails) #=> emails = "john@doe.com, person@somewhere.org"
    @emails = emails #=> will initialize a new instance with the string of emails assigned to the @emails instance variable
  end

  def parse #=> instance method that will parse the string of emails
    emails.split(/[,\s]+/).uniq
    #=> return value ["john@doe.com", "person@somewhere.org"]
  end

end
