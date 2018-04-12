# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :parse

  def initialize(email_data)
    email_array = []
    emails = email_data.split(/[,\s]/)
    emails.each do |email|
      if email_array.include?(email) == false && email != ""
        email_array << email
      end
    end
    self.parse = email_array
    email_array
  end
end
