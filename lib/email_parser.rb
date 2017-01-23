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
    email_array = []
    email_array_chomped = []
    email_chomp = ""
    email_array = @emails.split(" ")
    email_array.each do |email|
      email_chomp = email.chomp(",")
      if email_array_chomped.include?(email_chomp) == false
        email_array_chomped << email_chomp
      end
    end
    email_array_chomped

  end
end
