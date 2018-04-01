require "pry"


class EmailParser 
  
  attr_accessor :address
  
def initialize(address) 
  @address = address
  
end 

def parse 
  
  parsed = address.split(/\, |\ /)


parsed.uniq
end


end 