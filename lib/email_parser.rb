require 'pry'
class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split.map {|e| e.split(',')}.flatten.uniq
  end

end
