require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
attr_accessor :email

def initialize(email)
  @email = email
end

def parse
  parsed = self.email.split(/,|\s/)
  temp = parsed[0]
  parsed.each{
    |e|
    if e ==""
    parsed.delete(e)
    end
  }
  parsed.uniq
  #binding.pry
end

end
