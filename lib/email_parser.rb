# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
  attr_accessor :email
  @@all = []

  def initialize(emails)
    @email = emails
    @@all = []
  end

  def self.all
    @@all
  end


  def parse
    new_array = @email.split(' ')#split at spaces
    new_array.each do |email|
      email.gsub!(',', '') #remove commas
      email.strip! #remove spaces
      # binding.pry
      if !@@all.include?(email)
        @@all << email
      end
    end
    #new_array
    @@all


  end


end
