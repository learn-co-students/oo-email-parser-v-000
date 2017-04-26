# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

attr_accessor :emails

@@all = []


def initialize(emails)
   @emails = emails
   @@all << self
end


def self.all
  @@all
end



def parse
    if @emails.include?(", ") && @emails.include?(" ")
       emails1 = @emails.split(" ") 
       emails = emails1.collect { |email| email.split(",") }
       emails = emails.flatten
    elsif @emails.include?(",")
      emails = @emails.split(", ")
    elsif @emails.include?(" ")
      emails = @emails.split(" ")
   end
   unique = []
   
      emails.collect do |email|
        if unique.include?(email) == false
           unique << email
        end
      end
    unique
   
  end



  
end