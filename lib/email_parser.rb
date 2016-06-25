# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

attr_accessor :parsed_list

def initialize(emails)
  @parsed_list = emails.scan(/\w+@\w+.\w+/)
end

def parse
  @parsed_list.uniq
end


end
