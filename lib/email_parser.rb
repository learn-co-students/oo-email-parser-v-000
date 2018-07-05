# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :input_email
  def  initialize(input_email)
    @input_email = input_email
  end

  def parse
    array_of_emails = @input_email.split(/[, ]/).uniq
    array_of_emails.delete_if {|element| element.empty?}
    array_of_emails
  end

end

#emails = "avi@test.com, arel@test.com"
#emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
#parser = EmailParser.new(emails)
#puts parser.parse
parser = EmailParser.new("avi@test.com, ")
puts parser.parse