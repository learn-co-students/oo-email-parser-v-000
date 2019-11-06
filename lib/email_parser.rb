# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :list

  def initialize(emails)
      @list = emails
  end

  def parse
    subFinalList = []
    finalList = []
    separatedList = @list.split(",")
    separatedList.collect {|email| email.strip!}
    #puts "list1 = #{separatedList}"
    separatedList.collect do |email|
      tempEmail = email.split(" ")
      if tempEmail.length > 1
        tempEmail.each {|email| subFinalList << email}
      else
        subFinalList << email
      end
    end
    #puts "list2 = #{finalList}"
    subFinalList.each { |email| finalList << email if finalList.include?(email) == false}
    finalList
  end

end

# Reference Labs #
# Splitting text = ruby-advanced-class-methods-lab-v-000
# Removing dupes = ruby-class-variables-and-class-methods-lab-v-000
