# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :csv_emails
  
  def initialize(csv_emails)
    @csv_emails = csv_emails
  end 

  def parse 
    parsed_array = @csv_emails.split.collect do |address|
      address.split(",") 
    end
    parsed_array.flatten.uniq
  end 
end 