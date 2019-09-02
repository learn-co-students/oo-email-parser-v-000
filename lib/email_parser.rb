
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    new_email_list = @emails.gsub(',',' ')
    new_email_list = new_email_list.split(' ').uniq
    #new_email_list = @emails.split(',') && @emails.split(' ')
        new_email_list
  end

end
