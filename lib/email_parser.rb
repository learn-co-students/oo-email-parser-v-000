# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser

  attr_accessor :data
  @@emails = []

  def initialize(string)
    @data = string
  end

  def parse
    @@emails = self.data.split(/[\s,]/)
    @@emails = @@emails.reject {|x| x.length == 0}
    @@emails.uniq
  end
end
