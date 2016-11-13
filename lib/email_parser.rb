# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_reader :emails
  @@email_array = []

    def initialize(emails)
      @emails = emails
    end

    def parse
      emails.split.map do |email|
        email.split(',')
      end.uniq.flatten
    end

    end

    #def parse
      #unique_email = @email.gsub(/\s+/, ' ').gsub(/^\s+|\s+$/m, '').split(",").flatten.uniq

      #@@email_array << unique_email
      #@@email_array
    #end
