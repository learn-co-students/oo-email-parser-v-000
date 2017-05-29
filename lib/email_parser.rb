# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

attr_accessor :emails

@@all = nil

def initialize(emails)
   @emails = emails
   x = @emails.split(/[\s,']/)
    y = x.select{|f| f.length > 0}
  @@all = y
end

def parse
@@all.uniq
end




end
