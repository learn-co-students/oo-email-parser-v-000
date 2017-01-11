# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  # parse string of emails either by , or space and return unique emails
  def parse
    # split emails string into array then collect each email
    emails.split.collect do |email|
      email.split(",") # split each email by ,
      #=> [["avi@test.com"], ["arel@test.com"], ["test@avi.com"], ["test@arel.com"]]
    end.flatten.uniq # flatten the reutrned array to one array and remove dups
  end

end
