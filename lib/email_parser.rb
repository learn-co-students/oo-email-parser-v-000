# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  attr_accessor :email

  @@all = []

  def initialize(email)

    @email = email

  end

  def parse

    parse_email= @email.split(/\s|\,/)
      @all = []
      parse_email.delete("")
      parse_email.each do |email|
      @@all << email
      @all << email

    end
    @all.uniq
  end

end
