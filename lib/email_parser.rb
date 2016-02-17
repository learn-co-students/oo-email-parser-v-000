# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser

def initialize(email_string)
 @email_string=email_string

end

def parse
holder=@email_string.split(/[\s ,]/)
holder.delete_if {|email| email.empty?}
holder.uniq
end


end