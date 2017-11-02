require 'pry'

class EmailParser

  attr_accessor :email

  @@email = []

  def initialize(emails)
    @email = emails
    @@email << emails
  end

  def parse
    email_variable = @email.split(/\s|\,/)
    email_variable.delete_if {|str| str.empty?}
    email_variable.uniq
  end

end
