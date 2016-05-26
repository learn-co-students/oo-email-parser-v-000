# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list

  def initialize(emails)
    @unparsed_emails = emails
  end
  def parse
    @list = []
    parsed_emails = @unparsed_emails.split
    parsed_emails.each do |email|
      @list << email.delete(",") if @list.include?(email) == false
    end
    @list
  end

end
