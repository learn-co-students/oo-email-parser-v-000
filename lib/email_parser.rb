class EmailParser

  @@addresses = []

  def initialize(email_addresses)
    @@addresses.clear
    addresses = email_addresses.split(/[ ,]+/)
    addresses.each { |address| @@addresses << address unless @@addresses.include?(address) }
  end

  def parse
    @@addresses
  end
end
