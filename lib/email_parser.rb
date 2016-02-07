require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def parse
    parsed_data = data.gsub(',', '').split(' ') 
    parsed_data.uniq
  end
end
