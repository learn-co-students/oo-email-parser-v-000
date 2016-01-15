# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser
  attr_accessor :emails
  def initialize(csv_data)
    @csv_data = csv_data
  end
  def parse
    @csv_data.include?(",") ? @data = @csv_data.split(', ') : @data = @csv_data.split(' ')
    @data.collect! do |x|
      x.include?(" ") ? x.split(" ") : x
    end
    @data.flatten.uniq
  end
end