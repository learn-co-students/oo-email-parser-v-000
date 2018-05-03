# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emailarray = []
    @emailarray = emails.tr(',','').split(" ")
    @newarray = []
    @emailarray.each do |addresses|
      if @newarray.include?(addresses)
      else
        @newarray << addresses
      end
    end
    @newarray
  end

  def parse
    @newarray
  end
  
end
