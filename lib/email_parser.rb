# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :email_list_string

  def initialize(list)
    @email_list_string = list
  end

  def parse
    new_array = []
    if @email_list_string.include?(", ") == true
      array = @email_list_string.split(" ")
      array.each do |x|
        if x.include?(",") == true
          x = x[0..-2]
          new_array << x
        else
          new_array << x
        end
      end
    else
      new_array = @email_list_string.split(" ")
    end
    new_array.uniq
  end

end