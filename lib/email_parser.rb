require 'pry'


class EmailParser


  def initialize(emails)
    @emails = emails
  end


  def parse
    result = []
    @emails.split(/\s|\,/).each {|x| result << x unless result.include?(x) || x == "" }
      result
  end


end
