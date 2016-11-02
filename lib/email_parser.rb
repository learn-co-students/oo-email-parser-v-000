# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    unique_array = []
    email_array = @emails.split(" ")
    email_array.each do |email|
      if email.include?(",")
          email = email.delete ","
      end
        if !unique_array.include?(email)
          unique_array << email
          puts email
        end
    end
  unique_array
  end

end
