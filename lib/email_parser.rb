# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_string, :email_array

  def initialize(emails)
    @email_string = emails
    @email_array = []
  end

  def parse
    temp_array = @email_string.split(', ')
    temp_array = temp_array.join(' ').split(' ')
    temp_array.each {|email| @email_array << email if !@email_array.include?(email)}
    @email_array
  end

end
