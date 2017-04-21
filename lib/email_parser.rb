require 'pry'


class EmailParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    email_array = @email.split(/[,\s]+|[\s]/)

    new_array = email_array.uniq
    new_array
  end

end
