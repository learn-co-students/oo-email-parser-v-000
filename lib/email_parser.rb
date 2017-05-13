# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').




class EmailParser
  attr_accessor :emails

  def initialize(email_string)
    @emails = email_string
  end



  def parse
    email_array = []
    email_array << @emails.split(/[," "]+/)
    parsed_array = []
    email_array.each { |email|   parsed_array << email if email != ""}
    parsed_array.flatten.uniq
  end


end
