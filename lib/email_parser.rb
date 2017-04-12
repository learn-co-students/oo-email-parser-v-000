# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  #use attr_accessor :emails to set and get emails
  attr_accessor :emails
  #initialize emails on creation of new object
  def initialize(emails)
    @emails = emails
  end
  #define .parse method
  def parse
    #since 'emails' is a string of emails, .split will split them into and Array
    #that can then be iterated through while .map separates each into its own new array.
    emails.split.map do |email|
      #what to do to every element(email), which is split every email with commas
      email.split(",")
      #.flatten takes the arrays created by .map and comnines then into one array
      #.uniq makes sure there are no duplicate emails
    end.flatten.uniq

  end

end
