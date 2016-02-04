# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'

class EmailParser
  attr_accessor :email, :email_addresses

  def initialize(name)
    @emails = name
  end

  def parse
    if @emails.include?(" ") || @emails.include?(", ")
      email = @emails.gsub(/,| /, " ").split
      email_addresses = email.uniq
    end
  end
end
