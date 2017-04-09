# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',') and whitespace (' ').
class EmailParser
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def parse
    final = []
    newmail = list.split(/[,\s]/).uniq
    newmail.each {|space| final << space unless space.empty?}
    final
  end
end
