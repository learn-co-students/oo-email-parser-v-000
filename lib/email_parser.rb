# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  @@email_list = []

  def initialize(emails)
    @emails = emails
  end

 def parse
    short_list = @emails.split(/[\,\s]+/)
    short_list.uniq!{|address| address if !@@email_list.include?(address)}
    @@email_list << short_list
    short_list
  end
end
