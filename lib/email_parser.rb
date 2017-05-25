# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
     attr_accessor :email_str
    
    def initialize(emails)
       @email_str = emails
       #puts emails + " are here."
    end

    def parse
       array = @email_str.split(/[, ]/)
       array.delete("")
       array.uniq
    end
end



parser = EmailParser.new("avi@test.com, arel@test.com")
parser.parse