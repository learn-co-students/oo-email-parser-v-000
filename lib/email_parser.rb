class EmailParser
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def parse
    data = email.split(/[\s,]/)
    data.delete("")
    data.uniq
  end

end
