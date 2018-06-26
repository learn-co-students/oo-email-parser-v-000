class EmailParser

  attr_accessor :emails


  def initialize(emails)
    @emails = emails
  end

  def parse
    new_list = @emails.split(/\s*, | \s*/)
    parsed_list = new_list.delete_if { |email| email == "" }
    parsed_list.uniq
  end
end
