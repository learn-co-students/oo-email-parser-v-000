class EmailParser

  @@addresses = []

  def initialize(email_addresses)
    @@addresses.clear
    email_addresses.split(/[ ,]+/).each { |address| @@addresses << address unless @@addresses.include?(address) }
  end

  def parse
    @@addresses
  end
end
