# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :name, :csv_emails


# every time .new is created; the initialize methid is be called and a instance variable called @name will equal to to arg
  def initialize(name)
    @name = name
  end





# the parse method will take the name arg and
#split it into an array and iterate over it and split it again at the ","
#and if it is a duplicate it will remove them
  def parse
    name.split.collect do |address|
      address.split(',')
    end.flatten.uniq
  end
end
