# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :email_list

  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    a = email_list.split(",").join(" ").split(" ")
    parsed_list = []
    a.each do |email|
      if !parsed_list.include?(email)
        parsed_list << email
      end
    end
    parsed_list
  end
end
