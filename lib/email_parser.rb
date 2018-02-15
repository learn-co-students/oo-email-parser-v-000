# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser



  def initialize(emails)
    @emails = emails

  end

  def parse
    @emails.split(/,| |, /).delete_if{|e| e.length < 2}.uniq
  end

end
