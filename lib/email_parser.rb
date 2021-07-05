# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
    def initialize(csv)
        @csv = csv
    end

    def parse
        parsed_emails = @csv.split(/, | /)

        parsed_unique_emails = []
        
        parsed_emails.each do |email|
            parsed_unique_emails << email if !parsed_unique_emails.include?(email)
        end

        parsed_unique_emails
        
    end
end