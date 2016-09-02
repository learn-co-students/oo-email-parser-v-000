class EmailParser
    attr_accessor:emails
    def initialize(emails)
        @emails = emails
    end
    def parse
        @emails.gsub(/,+/, " ").squeeze(" ").split(" ").uniq
    end
end
