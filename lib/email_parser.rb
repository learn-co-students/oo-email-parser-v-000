require 'pry'

class EmailParser
  attr_accessor :email_string
  
  def initialize(email_string)
    @email_string = email_string
  end  
  
  def parse
  @email_string = @email_string.split(/[\s,']/)  
  @email_string.delete_if {|c| c.empty?}.uniq
  
  end  

end  
