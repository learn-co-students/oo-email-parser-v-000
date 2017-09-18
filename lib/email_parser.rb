# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  def initialize(emails)
    @emails = emails
  end

  def emails=(emails)
    @emails = emails
  end

  def emails
    @emails
  end

  def parse
    if @emails.split("").include?(",") && @emails.split("").include?(" ")
      @emails.split(" ").collect {|email| email.chomp(",")}.uniq
    elsif @emails.split("").include?(",")
      @emails.split(",").collect {|email| email.strip}.uniq
    elsif @emails.split("").include?(" ")
      @emails.split(" ").uniq
    else nil
    end

  end

end

#binding.pry
