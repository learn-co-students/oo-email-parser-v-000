# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
attr_reader :strings_to_parse

  def initialize(string)
      @strings_to_parse=string

  end

  def parse
  initial_parse = @strings_to_parse.split(" ")
  second_parse=[]

  i=0
      while i<initial_parse.length
        second_parse[i]=initial_parse[i].split(",")
        i +=1
      end
  second_parse.flatten.uniq

  end

end
