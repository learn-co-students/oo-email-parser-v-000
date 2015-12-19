# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
class EmailParser
    attr_accessor :emails
    
    def initialize (emails)
        @emails=emails
    end
    
    def parse
       new_emails=[]
        a=@emails.split(" ")
        a.each do |emaill|
        b=emaill.gsub(",","").strip
        if new_emails.include?(b)
            
        else
            new_emails << b 
        end
                end
        return new_emails
    end
  
end