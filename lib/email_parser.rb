class EmailParser

  attr_accessor  :emails

  def initialize(emails)
    @emails = emails #initialize the "emails" string so that it is created everytime a new object is instanciated
  end

  def parse
    #to make it easy to shovel them individually without extra whitespace or commas
    @emails_array=[] #create an empty array that can hold the parsed data
    @emails.delete!(',') # delete all commas
    @emails.split.each do |email| #add commas after every seperate email
      @emails_array << email
    end
    @emails_array.uniq
  end

end
