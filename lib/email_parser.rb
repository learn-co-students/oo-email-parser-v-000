'require pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#attr access - emails. need a method parse that will make them an array. 



class EmailParser

  attr_accessor :emails

  def initialize(emails)
  @emails = emails
  end

  def parse
    comma_emails = emails.split(",")
    other_emails = comma_emails.join(" ")
    final_emails = other_emails.split(" ")
    final_emails.uniq
  end



end