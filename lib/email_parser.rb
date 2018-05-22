
class EmailParser
  attr_accessor :email
  @@list = []

  def initialize(email_list)
    @@list = email_list.split(/\, |\ /)
  end

  def parse
    clean_list = @@list.uniq
    clean_list
  end
end
