# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :email

  def initialize(emails)
    @email = emails
  end

  def parse

    @email = @email.gsub(/ /, ",")
    @email_array = @email.split(",")
    @email_array = @email_array.reject {|x| x == ""}

    i = 0
    @email_array.each do |e|
      @email_array[i] = e.strip
      i += 1
    end
    @email_array = @email_array.uniq
  end

end
