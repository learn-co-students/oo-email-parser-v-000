# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
def initialize(email)
  @emails = email
end
def parse
  email = []
  @emails.split(",").each do |x|
    email << x.split(" ")
  end
  email.flatten.uniq
end

end
