# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :mail, :a
   def initialize(m)
     @mail = m
   end
  def parse
    #  a =[]
    a = @mail.split(/[\s,","]/)
    a.delete("")
    a = a.uniq
  end
end
