
class EmailParser
attr_accessor :email

 def initialize(email)
  @email = email
 end

 def parse
  @email.split(/,? /).uniq
 end
end
