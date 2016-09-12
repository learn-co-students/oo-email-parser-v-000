# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser
  attr_accessor :csv

  def initialize(csv)
    @csv = csv
  end

  def parse
    parser = self.class.new(csv)
    if parser.csv.include?(", ")
      parser.csv = parser.csv.split(/\b[[:punct:]]*\s/)
    elsif parser.csv.include?(" ")
      parser.csv = parser.csv.split(/\b[[:punct:]]*\s/)
    end
    parser.csv = parser.csv.uniq
  end


end
