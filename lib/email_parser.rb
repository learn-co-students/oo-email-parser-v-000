# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_accessor :list

  def initialize(list)
    self.list = list
  end

  def parse
    @list = @list.split(/\s|,/).reject(&:empty?)
    @list = @list.collect { |email| email = email.strip }
    @list.uniq
  end

end
