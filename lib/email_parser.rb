# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end



  def separator
    if @emails.include?(',')
      @emails = @emails.split(', ')
      if @emails.index {|email| email.include?(' ')}
        @emails = @emails.collect! {|email| email.split(" ")}.flatten
      end
    else
      @emails = @emails.split(" ")
    end
    @emails
  end

  def remove_duplicates
    @emails = @emails.uniq
    # binding.pry
  end

  def parse
    # email = @emails
    # # binding.pry
    # if email.include?(",")
    #   email = email.split(", ")
    #   # binding.pry
    #   if email.index {|i| i.include?(" ")}
    #     # binding.pry
    #     email = email.collect! {|email| email.split(" ")}.flatten
    #   end
    # else
    #   email = email.split(" ")
    # end
    # email
    # binding.pry
    separator
    remove_duplicates
  end

end
