require 'pry'
class EmailParser
   attr_accessor :emails

   def initialize(emails)
      @emails = emails
      parse
   end

   def parse
      parsed_emails = []
      parsed_emails = @emails.split(/[\s,]+/)
      parsed_emails.uniq
   end
end
 # binding.pry
