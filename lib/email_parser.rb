# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
@@all = []
attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    parse = []
    parse = email.split(/[, \s ]/)
    parse.delete_if(&:empty?).uniq
  end
end
