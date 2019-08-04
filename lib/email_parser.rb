# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :list

  def initialize(email_list)
      @list = email_list
  end

  def parse
    myarray = []
    array_with_spaces = @list.split(", ") #splits the list based on "," into a new array

    #splits any space separated emails into a new array and shovels each element into myarray
    array_with_spaces.collect do |email|
      if email.include?(" ")
        email.split(" ").each{|email| myarray << email}
      else
        #if the array_with_spaces element does not have any spaces, shoevles it into myarray
        myarray << email
      end
    end
    myarray.uniq
  end

end
