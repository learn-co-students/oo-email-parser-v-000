# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email_list

  @@all_emails = []

  def initialize(email_list)
    @email_list = email_list
  end

  def parse
   email_parsed = email_list.split(/\s|\,/).delete_if{|s| s.length < 1}
   email_parsed.uniq
 end

end
