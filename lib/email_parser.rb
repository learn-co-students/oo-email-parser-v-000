
class EmailParser

  attr_accessor :emails

  def all
    @email_array
  end

  def initialize(emails)
    @email_array = []
    @email_array << emails
  end

  def parse
    @email_array.join(" ").gsub(" ", ",").split.join.gsub(",,", ",").split(",").uniq
  end

end
