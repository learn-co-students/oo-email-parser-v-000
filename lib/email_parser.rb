# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
  class EmailParser
    attr_accessor :emails
    @@all =[]

    def initialize(emails)
      @emails = emails
      @@all << @emails
    end


    def self.all
      @@all
    end
    # def parse
    #      array=[]
    #      new_array=[]
    #      str=""
    #      i=0
    #      if @emails.include?(",") then
    #          puts "here"
    #        array=@emails.split(", ")
    #        while i < array.length
    #           str=array[i].chomp(",")
    #           puts "str #{str}"
    #           new_array[i]=str
    #           i+=1
    #         end
    #       end
    #     if @emails.include?(" ") then
    #        array=@emails.split(" ")
    #         while i < array.length
    #           str=array[i].chomp(" ")
    #           puts "str #{str}"
    #           new_array[i]=str
    #           i+=1
    #         end
    #
    #      end
    #      new_array.uniq
    #   end
    # # def parse
    # #    array=[]
    # #    if @emails.include?(",") then
    # #      array=@emails.split(", ")
    # #     end
    # #   if @emails.include?(" ") then
    # #      array=@emails.split(" ")
    # #    end
    # #    array
    # # end
    def parse
     array=[]
     new_array=[]
     str=""
     i=0
     comma=@emails.include?(",")
     space=@emails.include?(" ")


 # checking if both are present
       if space && comma then
         puts "INSIDE"
          array=@emails.split(",")
          new_array=@emails.split(" ")
           while i < new_array.length
                str=new_array[i].chomp(",")
                new_array[i]=str
                i+=1
           end
        else
          if comma then
            # have my array
            array=@emails.split(", ")
           while i < array.length
           str=array[i].chomp(",")
              # puts "str #{str}"
             new_array[i]=str
             i+=1
            end
          end
         if space then
            array=@emails.split(" ")
          while i < array.length
            str=array[i].chomp(" ")
            puts "str #{str}"
            new_array[i]=str
            i+=1
          end
        end
 end

      new_array.uniq

    end
  end
