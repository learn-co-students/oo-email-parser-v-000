require 'pry'

class EmailParser
  attr_accessor :emails

def initialize(emails)
  @emails = emails
end

  def parse
    email_list = emails.delete(",").split.uniq
  end
end
