# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
@@all = []
attr_accessor :data


  def initialize(string)
      @data = string
  end

  def parse
  array =  @data.split(/[, ]/)
  array.delete("")
  array.uniq
  end

end

juncture = EmailParser.new("asldfkjas;ldfkjaslkdfja;")
