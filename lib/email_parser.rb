require 'pry'

class EmailParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split.map { |email| email.split(',') }.flatten.uniq
  end

end
