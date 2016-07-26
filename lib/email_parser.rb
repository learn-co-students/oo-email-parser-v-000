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
        address_row = emails.split(/[\s,]+/)  #regex to parse by comma and space
        address_row = address_row.uniq
        address_row
    end
end
