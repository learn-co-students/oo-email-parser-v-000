# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emailList = []
    emailList1 = []
    emaiListUnique = []
    newString = @emails.gsub(/,/, "")
    puts "#{newString}"
    emailList = newString.split(' ')

    emailList.each do |x|
      emailList1 << x.strip
    end

    emailList1.uniq

  end
end
