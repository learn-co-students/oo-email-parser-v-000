# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser

  attr_accessor :email

  @@email = []

  def initialize(email)
    @email = email
  end

  def parse
    @@email = @email.split().collect{|e| e.split(",")}.flatten #pseudo: split to get rid of spaces, then collect a new array that gets rid of commas, flatten is needed to put everything back together
    @@email = @@email.uniq # .uniq is OP.
  end
end
