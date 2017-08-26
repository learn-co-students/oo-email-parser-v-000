require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list

  def initialize(emails)
    @email_list = emails
  end

  def parse
    @email_list = @email_list.split(/,?\s+/).flatten.uniq
  end
  
end # END of CLASS


# class EmailParser
#   attr_accessor :email_list
#   @@email_list = []
# def initialize(emails)
#   @@email_list << emails
# end
# def parse
#   @@email_list.each_with_index do |email_string, index|
#     # binding.pry
#     @@email_list[index] = email_string.split(/,?\s+/)
#   end
#   # binding.pry
#   @@email_list.flatten!.uniq!
#   @@email_list
# end
# end # END of CLASS
