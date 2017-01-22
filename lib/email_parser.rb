class EmailParser

attr_accessor :emails


def initialize(emails)
@emails = emails
end

def parse
    parse = emails.split(", ")
    emails = emails.uniq
end

end
