# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email

  def initialize(emails) #initializes string of emails
    @email = emails
  end

  def parse #instance method
    array = @email.split(/[ , ]/).uniq #returns only unique emails
    array.reject! {|element| element.empty?} # removes duplicate emails
    array
  end
end
