# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails, :array

  def initialize(emails)
    @emails = emails
  end

   def parse

      array = @emails.tr(", "," ").split
      #  @emails.split(", ") && array =
      @array = array
      @array.uniq


   end

end
