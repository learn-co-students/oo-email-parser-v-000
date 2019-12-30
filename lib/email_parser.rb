# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser

    attr_reader :addresses

    def initialize(emails)
        @addresses = emails
    end

    def parse
        self.addresses.split.map{ |email| email.split(',')}.flatten.uniq
    end

end
