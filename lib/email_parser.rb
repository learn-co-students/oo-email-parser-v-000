# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
attr_accessor :email_list

  # the commented portion utilizes an instance variable instead of the self method
  # def initialize(email_list)
  #   @email_list = email_list
  # end

  def initialize(email_list)
    self.email_list = email_list
  end

  def parse
    self.email_list.split(/,?\s/).uniq
  end
end
