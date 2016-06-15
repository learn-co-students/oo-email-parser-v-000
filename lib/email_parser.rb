class EmailParser

  attr_accessor  :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails_array=[] #create an empty array that can hold the parsed data
    @emails.delete!(',') # delete all commas
    @emails.split.each do |email| #add commas after every seperated word
      @emails_array << email
    end
    @emails_array.uniq
  end
  
end
