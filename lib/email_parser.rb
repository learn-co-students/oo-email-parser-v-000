# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email_string
  @@all = []

  def self.all
    @@all
  end

  def self.new(email_string)
    email_string = email_string
  end

  def self.parse
    self.all = email_string.split(" ").split(",")
  end


end
