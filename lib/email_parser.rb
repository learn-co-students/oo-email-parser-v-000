class EmailParser

  attr_accessor :emails

  def initialize(email_address)
    @emails= email_address
  end

 def parse
    @emails.gsub(',', "").split(" ").uniq
 end

end
