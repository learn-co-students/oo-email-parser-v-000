# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :email
  @@email_array = []

  def self.email_array
    @@email_array
  end

  def initialize(email)
    @email = email


  end

  def parse
    separated = []

    final_array =[]

    if @email.include?(",") || @email.include?(" ") == true

      separated = @email.split(", ")
      		separated.each_with_index do |x, index|
            if x.include?(" ") == true
              y = separated.delete_at(index)
      		    y = y.split(" ")

              separated.insert(index, y)
              separated.flatten!
            end
      		end


    end

    separated.each do |x|
      if final_array.include?(x) == false
        final_array << x
      end

    end
    final_array



  end



end
