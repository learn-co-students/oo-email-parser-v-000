require "pry"

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email

  def initialize(emails)
    @emails = emails

  end

  def parse
   @emails.split(", ").collect do |email|
     email.split(" ")
     #binding.pry
   end.flatten.uniq
 end

end
