# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    email_arr = []
    email_arr = email.delete(",").split(" ")
    email_arr.uniq
  end

end