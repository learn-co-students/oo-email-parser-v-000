class EmailParser

  attr_accessor :regular_list 

  # def regular_list=(regular_list)
  #   @regular_list = regular_list
  # end 

  # def regular_list
  #   @regular_list
  # end 

  # def initialize(regular_list)
  #     @regular_list = regular_list
  # end 

# why do you have to set regular_list equal 
# to an instance variable if it's already set to that
# in the setter and getter methods  

  def parse 
    regular_list.gsub(",","").split(" ").uniq 
  end 

end

# "avi@test.com, arel@test.com test@avi.com, test@arel.com"

emails = EmailParser.new

emails.regular_list = "avi@test.com, arel@test.com test@avi.com, test@arel.com"

puts emails.parse

# puts "avi@test.com, arel@test.com test@avi.com, test@arel.com".gsub(",","").split(" ").uniq
