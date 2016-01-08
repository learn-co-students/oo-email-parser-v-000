class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    consolidated_array = @emails.delete ","
    consolidated_array.split(" ").uniq
  end

end