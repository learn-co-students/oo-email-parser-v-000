# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email


  def initialize(emails)
    @email = emails

  end

  def parse
    array = []
    array = @email.split(/,\s|\s/)
    i = 0
    while i < array.size
      j = i + 1
      while j < array.size
        if array[i] == array[j]
          array.delete_at(j)
        end
        j = j + 1
      end
      i = i + 1
    end
    array
  end

end
