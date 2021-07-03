# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :emails

def initialize(emails)
  @emails = emails 
end 

#def parse
#  parsed =  @emails.split(",").map {|email| email.strip}
#  parsed.split(" ").map {|email| email.strip} 
#end


def parse
  (@emails.split(/[, ]/).map {|email| email.strip}).reject {|space| space.empty?}.uniq
end
end

#duplicates and splits on multipe things