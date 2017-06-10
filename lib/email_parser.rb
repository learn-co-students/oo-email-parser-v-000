class EmailParser
  attr_accessor :email_list

  def initialize(emails)
    @email_list = emails
  end

  def parse
    @email_list.gsub(/\s/, ",").split(",").reject{|x| x== ""}.uniq
  end
end
