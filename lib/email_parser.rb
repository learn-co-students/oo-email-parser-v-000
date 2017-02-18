# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    second_round_output =[]
    final_output=[]

    first_round_output = @emails.split(pattern =(/(,|,\s|\s)/)) #splits email string
    first_round_output.each {|temp| second_round_output << temp if !(temp.include? (",")) && !(temp == " ") && !(temp == "")} #cleans up by removing array objects that contain only commas and/or spaces
    @emails = second_round_output.uniq
  end

end
