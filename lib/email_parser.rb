# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    #gsub is a substitution method that replaces all instances
    email_list = @emails.gsub(",", " ")
    email_list.split(" ").uniq
  end
end
