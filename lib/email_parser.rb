# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'

class EmailParser
  attr_accessor :list
    @@all = []

    def initialize(string)
      @list = string
    end


    def parse
      email = self.list.split(/[(,)|(\s+)]/)
      email.delete("")
      email.uniq
    end

  end