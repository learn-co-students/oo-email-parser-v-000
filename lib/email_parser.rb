# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser
  attr_accessor :emails
  @@all = []

  def self.all
    @@all
  end

  def initialize(emails)
    @emails = emails
  end

  # Parses and saves @emails as an array, then returns it. Also saves each email into @@all if they are new emails.
  def parse
    @emails = @emails.split(",").join.split(" ").uniq.each{|email| @@all << email if @@all.include?(email) == false}
  end
  
end