# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def parse
    name.split.map do |names|
      names.split(',')
    end.flatten.uniq
  end
end