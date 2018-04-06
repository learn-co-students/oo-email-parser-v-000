# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# class EmailParser
#   attr_accessor :email
#
#   def initialize(email)
#     @email = email
#   end
#
#   def parse
#     emails.split.map do |email|
#       email.split(',')
#     end.flatten.uniq
#   end
# end
#
#
#     #where does the string containing emails come from?
#
#     #what character do we need to parse on
#     #what is self?
#     #self is an instance when it is an instance method
#     #self is the class when it is a class method (def self.method_name... end)

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
