# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  def initialize(emails)
    @emails = []
    emails = emails.split(" ")
    emails.each do |email|
      if email.end_with? ","
        clean_email = email[0, email.length-1]
      else
         clean_email = email
      end

      if !@emails.include? clean_email
        @emails << clean_email
      end
    end
  end

  def parse
    return @emails
  end

end
