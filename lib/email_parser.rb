# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
attr_accessor :raw_list, :return_array, :parsed_array

def initialize(email_list)
  @raw_list=email_list
  parse
  @return_array
end # initialize

def parse
  @parsed_array = @raw_list.split(/, {1}|(\b \b)/)
  @parsed_array.delete_if{|i|i==" "}
  @return_array = @parsed_array.uniq
end # parse


end # EmailParser
