class EmailParser
    attr_accessor :emails
   
   def initialize(emails)
       @emails = emails
   end
   
   def parse
       list = emails.split(/[ ,]/)
       list.delete("")
       list.uniq
   end
end
