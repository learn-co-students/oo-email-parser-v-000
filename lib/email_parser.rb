class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split.collect do |email|
      email.gsub(",", "")
    end
    .uniq
  end

end
