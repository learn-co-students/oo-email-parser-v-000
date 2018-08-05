# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails #setter and getter

  def initialize(emails)
    @emails = emails  #assign emails to equal emails
  end

  def parse
    email_arrays = [] # here we will hold our parsed emails
    email_arrays = @emails.split(/[,\s]/) # splitting the email when we see a comma or a space
    email_arrays = email_arrays.reject {|e| e == ""}
    email_arrays.uniq #removing duplicates from an array
  end
  
end
