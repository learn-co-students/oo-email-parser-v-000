# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :email
  @@all = []

  def initialize(email)
   @email = email
   @@all = []
  end

  def parse
    input = @email.split(/[', ']/)
    input.each do |x|
      if x != ""
        @@all << x
      end
    end
    return @@all.uniq
  end

end
