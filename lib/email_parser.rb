# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

    def parse
        if  !@parse.split(", ").join(" ").split(" ").uniq!
              @parse.split(", ").join(" ").split(" ")
        else
           @parse.split(", ").join(" ").split(" ").uniq!
        end
    end

    def initialize(parse)
      @parse = parse
    end

  end
