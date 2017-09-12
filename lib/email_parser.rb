# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
attr_accessor :emails

def initialize(emails)
  # self is the current instance of EmailParser
  self.emails = emails
end

def parse
  # "avi@test.com arel@test.com"
  # "avi@test.com arel@test.com"
  emails.gsub(",","").split(" ").uniq
end




end
