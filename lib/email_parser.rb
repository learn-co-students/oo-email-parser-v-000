class EmailParser 
  
  attr_accessor :list 
  
  def initialize(list) 
    @list = list 
  end 
  
  def parse 
    a = @list.split(" ")
    c =[]
    a.each do |piece|
      b = piece.split(",")
      b.each do |address|
        c << address 
      end 
    end 
    c.uniq 
  end 
  
  
  
end 
