require 'pry'

class EmailParser
  attr_accessor :emails

  #initialize the object with email string
  def initialize(emails=nil)
    @emails = emails
  end

  #takes in a string of emails separated by spaces or commas, and returns and array of non-duplicative emails
  def parse
    #split string on commas
    email_array = @emails.split(", ")
    email_array.each.with_index do |email,i|
      #if an array entry also includes a space, we further split it
      email_array[i] = email.split(" ") if email.include?(" ")
    end
    #returns a flattened array with only unique values
    email_array.flatten.uniq
  end
end
