# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list, :email_array, :email_array_joined

  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    if (@email_list.include?(", "))
      @email_array = @email_list.split(", ").uniq

      @email_array.each do |email|
          if email.include?(" ")
            @email_array_joined = @email_array.join(" ")
          end
      end

      if @email_array_joined == nil
        return @email_array
      else
        return @email_array_joined.split(" ").uniq
      end

    elsif (@email_list.include?(" "))
      @email_array = @email_list.split(" ").uniq
    end
  end

end
