# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email

  # accepts arg of unformatted emails
  def initialize(email)
      @email = email
  end

  # separates emails by comma and space
  # returns unique emails only
  def parse
    emails = email.gsub(",", "").split(" ").uniq  
  end

end
