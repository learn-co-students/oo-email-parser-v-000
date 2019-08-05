# Build a class EmailParser that accepts a string of unformatted 
# @emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails
   
   
  #returns an array of properly formatted unique @emails
  def parse
    normalize  #convert the string into the same format
   # removedups #remove any duplicate emails via my unique function
    emails     #return emails
  end
   
  def normalize
    
      ##works!
    # if emails.match(/\w\s/)
    #     @emails = emails.split(/\s/)
    # elsif emails.match(/,\s/)
    #     @emails = emails.split(/,\s/)
    # else
    #     puts "no matches"
    # end
    
    ##also works!
    # case
    # when emails.match(/\s/)
    #     @emails = emails.split(/\s/)
    # when emails.match(/,\s/)
    #     @emails = emails.split(/,\s/)
    # else
    #     puts "no matches"
    # end
    
    ##best setup leaves duplicates
    # @emails = emails.split(/,\s|\s/) if emails.match(/,\s|\s/)
    
    ##best setup also removes duplicates
    @emails = emails.split(/,\s|\s/).uniq if emails.match(/,\s|\s/)
        
  end
  
  def removedups  #my own .uniq function
    emails.each_with_index do |item, i|
      index_to_check = i + 1
      while index_to_check < emails.length
       emails.delete_at(index_to_check) if item == emails[index_to_check]
       index_to_check  += 1
      end
    end
  end
    
  def initialize(string)
        @emails = string
  end
    
end