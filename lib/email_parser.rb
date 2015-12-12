# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser
  attr_accessor :parse
   
  def initialize(emails)
    @emails = emails 
  end
   
  def parse
    # splits emails by comma or space, strips whitespace and duplicates
    # and deletes any empty strings in the array.
    @emails.split(/[, ]/).map(&:strip).uniq.delete_if {|t| t == ""}
  end

end