class EmailParser

attr_accessor :emails

def initialize(emails)
@emails = emails
end

def parse
email = @emails.split(/[,\s]+/)
email.uniq!
email
end

end
