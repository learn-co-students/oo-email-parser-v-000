# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails
  attr_reader :email_data

  def initialize(email_string)
    @emails = Array.new
    @email_data = email_string

  end

  def parse

    tmp_email_list = Array.new
    tmp_email = String.new

    if @email_data.match(/,/) != nil
      tmp_email = @email_data.split(",")
    elsif @email_data.match(/ /) != nil
      tmp_email = @email_data.split(" ")
    end

    tmp_email.collect do | element |
      element = element.strip
      if element.match(/ /) != nil
        element = element.split(' ')
        element.each{ |inner_element|  tmp_email_list << inner_element if !tmp_email_list.include?(inner_element)  }
      else
        if !tmp_email_list.include?(element)
          tmp_email_list << element
        end
      end

    end

    @emails = tmp_email_list
    @emails
  ##end of parse
  end

end
