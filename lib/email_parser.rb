# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser #here is my class 

attr_reader :emails #attribute reader

def initialize(emails) #initializing
  @emails = emails
end


 def parse #parse method
    emails.split.map do |email| #seperates the emails
      email.split(',') #by finding spaces or commas
    end.flatten.uniq #and ensures they are unique
  end
end
