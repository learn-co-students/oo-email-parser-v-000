require 'pry'

class EmailParser

  attr_reader :emails
  @@all = []

  def initialize(emails)
    @emails = emails
  end


  def parse
    complete = emails.delete(",").split(" ")
    complete.uniq
  end

end