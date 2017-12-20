require 'pry'

class EmailParser
    attr_accessor :emails
    
    def initialize(emails)
        @emails = emails
    end
        
    def parse
        email_addresses = emails.split(/\,\s|\s/).uniq
    end
end