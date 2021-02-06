class EmailAddressParser 
 attr_accessor :emails
 
 def initialize(emails)
   self.emails = emails
 end
 
 def parse
   self.emails.split(/,\s|\s/).uniq
 end
end
