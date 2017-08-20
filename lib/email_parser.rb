# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email_list

  def initialize(email_list)
    @@email_list = email_list
  end

  def parse
    parse_list = []
    @@email_list.gsub(",","").split(" ").each do |email|
      parse_list << email unless parse_list.include?(email)
    end
    return parse_list
  end


end
emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
puts EmailParser.new(emails).parse
