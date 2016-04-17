require "pry"

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :emails
  @@all = []

  def all_emails
    @@all
  end

  def initialize(emails)
    @emails = emails
    @@all.clear << emails
  end


  def parse

    email_array = []
    @@all.each do |string|
      string.split(/,\s|\s/).each do |email_address|
        if !email_array.include?(email_address)
          email_array << email_address
        end
      end
    end
    email_array.flatten
  end


end


