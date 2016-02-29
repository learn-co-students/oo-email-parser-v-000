# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
require 'pry'
class EmailParser

  


  def initialize(string)
    @string = string
    @list = []
    @list<<string
  end

  def parse
    no_space = @list[0].split(" ")
    comma = []
    single = []
    no_space.each do |x|
      if x.include?(",")
        comma<<x.tr(',','')


      else
        comma<<x

      end
    end
    comma.each do |x|
      if single.include?(x)
        nil
      else
        single<<x
      end
    end
    return single


  end



end

