# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :email_string

  def initialize(email_string)
    @email_string = email_string
  end

  def parse(email_string)
    array = email_string.split(" " || ",")
    array.unique
  end

end


#take in a string
#split it into array based on spaces or commas
#return this array, with .unique

