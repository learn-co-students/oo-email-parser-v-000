class EmailParser 
  attr_accessor :emails
  
  def initialize(emails) 
    @emails = emails 
  end 

  def parse
    email = @emails.split(" ").map {|s| s.gsub(",","") }
    email.uniq
  end 
end 



  # def parse
  #   emails.split.map do |email|
  #     email.split(',')
  #   end.flatten.uniq
  # end