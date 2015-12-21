# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')



class EmailParser 
  attr_accessor :parse

  @@all = []

    def initialize(email)
      @@all.clear
      format_email = email.gsub(/,/, '') 
      reformat_email = format_email.split(' ')
      reformat_email.each do |x|
        @@all << x
      end
    end

    def parse
      @@all = @@all.uniq
      @@all
    end

    

end
 