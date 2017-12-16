require "pry"

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

attr_accessor :emails, :new, :all

  def initialize(list_of_emails)
      @emails = list_of_emails
  end

  def parse
    @all = []
    @emails = @emails.split(" ")
    @emails.each do |email|
      email = email.chomp(",")
        if @all.none? {|x| x == email}
          @all << email
        end
    end
    @all
  end

end
