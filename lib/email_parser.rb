# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_reader :emails
  @@all = []

  def initialize(emails)
    @email = emails
  end

  def parse
    @email.split(/[\s,]+/).each do |x|
      @@all << x
    end.flatten.uniq

    # #alternate path
    # adam = @email.split(/[\s,]+/)
    # adam.uniq!
    # adam.each do |x|
    #   @@all << x
    # end
  end
end
