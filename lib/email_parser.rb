# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
  require "pry"
class EmailParser

attr_accessor :emails

def initialize(emails)
@emails = emails
# binding.pry
end

def parse
email_array = emails.split(', ')
email_array.map do |email|
  # binding.pry
  email.split(' ')
end.flatten.uniq
 # binding.pry

  # binding.pryS
end
end
