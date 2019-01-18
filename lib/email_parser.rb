# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
@@emails = []
attr_accessor :email

def initialize(email)
  @email = email
end

def parse
array = @email.split(/[, ]/)
output = []
array.each do |element|
  if element != "" && output.include?(element) == false
    output.push element
end
end
return output
end


end
