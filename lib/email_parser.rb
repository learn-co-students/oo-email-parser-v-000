
require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  @@all = []

  def initialize(emails)
    @emails = emails
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def parse
    emails.split(/[\s,]/).collect do |e|
      e
    end.uniq.reject { |e| e.empty?  }
  end

end
