# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :csv_emails

  def initialize(csv_emails)
    @emails = csv_emails
  end

  def parse
     # we are being passed a list of emails
    #take those emails and put them into an Array
    #the list of emails seperates by comma or white space
    array = []
    array = @emails.split(/\s|\,/)
    array = array.reject { |empty| empty == ""}
    array.uniq
  end

end