# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :email_string
  @@all = []
  @email_string = ""

  def self.all
    @@all
  end

  def initialize(email_list)

    @email_string = email_list
  end

  def parse
    #binding.pry
    @@all = @email_string.split(", ")
  #   binding.pry
  end




end
