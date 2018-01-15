# Build a class EmailParser that accepts a string of unformatted
# emails.
 # The parse method on the class should separate them into unique email addresses.
# The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

  attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

      def parse
        sp = emails.tr(',', ' ') # create a value for it sp
        sp2 = sp.split(' ')  #create another value sp2
        sp2.uniq   #told it not to return any duplicates
      #  binding.pry

      end


 end
