require "pry"

class EmailParser
  attr_accessor :emails
  @@all = []
  
  def initialize(emails)
   @emails = emails 
  end
  
=begin 
  def self.all
    @@all
  end
    
  def self.find_or_add(emails)
  parsed_emails = @emails.split(','||' ')
    if self.all.find{|emails| emails == emails}
      @@all << parsed_emails
    else
      @@all
    end
    binding.pry
  end
  
=end
  
  def parse
    #find_or_add(emails)
    
    #binding.pry 

    parsed_emails = @emails.split(/[\s,]+/).uniq 
    
=begin    parsed_emails.each do |compare_email|
      if @@all.find{|email| email == compare_email} != compare_email
      @@all << compare_email
      
    end
  end
    @@all
=end
  end
  
end