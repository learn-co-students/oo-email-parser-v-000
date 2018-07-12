require 'pry'

class EmailParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    result = @emails.split(/\b[,\s]+/)
    # result = @emails.split("," && " ")
    result.uniq
  end
end