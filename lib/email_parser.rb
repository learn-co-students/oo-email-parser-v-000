require 'pry'
class EmailParser
   attr_accessor :emails

   def initialize(emails)
      @emails = emails
   end

   def parse
      parsed_emails = []
      parsed_emails = @emails.split(/[\s,]+/)
      parsed_emails.uniq
   end
end
 # binding.pry
