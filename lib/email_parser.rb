# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :list_of_emails

  def initialize(emails)
    @list_of_emails = emails
  end

  def parse

    unique_emails = []

    email_array = @list_of_emails.split(" ")
    email_array.each do |email|
      address = email.chomp(",")
      if unique_emails.include?(address) == false
        unique_emails << address
      end
    end

    unique_emails
  end

end
