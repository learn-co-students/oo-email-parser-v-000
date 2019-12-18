class EmailParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    @email_addresses.split.map { |email| email.split(',') }.flatten.uniq
  end

end
