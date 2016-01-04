# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def parse
    list.split(/[,\s]/).delete_if {|str| str == ""}.uniq
  end

end
