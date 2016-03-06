# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    
    emails = @emails.split(",").each {|email| email.strip!}.map {|email| email.split(" ")}.flatten
=begin
    if emails.include?(",")
      @emails = @emails.split(",").each {|email| email.strip!}
    else
      @emails = @emails.split(" ").each {|email| email.strip!}
    end
    #this makes the first two pass but after that, we'll check to see which entries have extra @ symbols and splits those
    store = []
    @emails.each do |email|
      if email.count("@") > 1
        store << email
      end
    end

    @emails << store.first.split(" ")
    @emails.delete_if {|email| email.count("@") > 1}
=end
    emails.uniq  #had .flatten in here as well earlier

  end

end