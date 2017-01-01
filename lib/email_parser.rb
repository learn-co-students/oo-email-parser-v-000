  require 'pry'

class EmailParser

  attr_accessor :email

  def initialize (emails)
    @email = emails
  end

  def parse
    striper = @email.split(",") && @email.split(" ").collect! do |obj|
      obj.delete(",")
    end
    striper.uniq!
    return striper
  end

end
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
