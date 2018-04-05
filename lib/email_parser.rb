require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    parsed = emails.split.map do |email|
      email.split(',')
    end
    parsed.flatten.uniq
  end

end
